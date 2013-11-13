//
//  MainViewController.m
//  StudyIOS
//
//  Created by Chen Chao on 13-11-13.
//  Copyright (c) 2013年 Chen Chao. All rights reserved.
//  

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

static int count = 0;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view insertSubview:self.jump1.view atIndex:0];
}

- (IBAction)click1Jump:(id)sender {
    count++;
    if (count % 2 == 0) {
        
        [self.jump1.view removeFromSuperview];
        [self.view insertSubview:self.jump2.view atIndex:0];
        
        [self.view insertSubview:self.jump1.view atIndex:0];
    } else {
        
        [self.jump2.view removeFromSuperview];
        [self.jump1.view removeFromSuperview];
//        [self.view insertSubview:self.jump1.view atIndex:0];
    }
}

- (Jump1ViewController *)jump1 {
    if (_jump1 == nil) {
        _jump1 = [[Jump1ViewController alloc] initWithNibName:@"Jump1ViewController" bundle:nil];
    }
    
    return _jump1;
}

- (Jump2ViewController *) jump2 {
    if (_jump2 == nil) {
        _jump2 = [[Jump2ViewController alloc] initWithNibName:@"Jump2ViewController" bundle:nil];
    }
    
    return _jump2;
}

@end
