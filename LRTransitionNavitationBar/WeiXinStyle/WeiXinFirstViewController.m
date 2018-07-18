//
//  WeiXinFirstViewController.m
//  LRTransitionNavitationBar
//
//  Created by lirui25 on 2018/7/18.
//  Copyright © 2018年 Baidu. All rights reserved.
//

#import "WeiXinFirstViewController.h"


@interface WeiXinFirstViewController ()

@end

@implementation WeiXinFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.topBarBackgroundColor = [UIColor colorWithRed:34/255.f green:36/255.f blue:41/255.f alpha:1];
//    self.hideNavigationBarSeperateLine = YES;
}

- (IBAction)dismiss:(id)sender {
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}


@end
