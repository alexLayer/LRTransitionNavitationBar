//
//  NormalNormalSecondViewController.m
//  LRTransitionNavitationBar
//
//  Created by lirui25 on 2018/7/18.
//  Copyright © 2018年 Baidu. All rights reserved.
//

#import "NormalSecondViewController.h"

@interface NormalSecondViewController ()

@end

@implementation NormalSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.topBarBackgroundColor = [UIColor redColor];
    [self setBackItems];
}

- (void)setBackItems {
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [backButton setTitle:@"返回" forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [backButton setImage:[UIImage imageNamed:@"back_item"] forState:UIControlStateNormal];
    UIBarButtonItem *backButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    
    self.navigationItem.leftBarButtonItems = @[backButtonItem];
}


- (void)back {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
