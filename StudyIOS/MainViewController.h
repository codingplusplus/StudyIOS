//
//  MainViewController.h
//  StudyIOS
//
//  Created by Chen Chao on 13-11-13.
//  Copyright (c) 2013年 Chen Chao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Jump1ViewController.h"
#import "Jump2ViewController.h"

@interface MainViewController : UIViewController

@property (strong, nonatomic) Jump1ViewController *jump1;
@property (strong, nonatomic) Jump2ViewController *jump2;

@end
