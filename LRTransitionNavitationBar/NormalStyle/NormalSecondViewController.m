//
//  NormalNormalSecondViewController.m
//  LRTransitionNavitationBar
//
//  Created by lirui25 on 2018/7/18.
//  Copyright © 2018年 Baidu. All rights reserved.
//

#import "NormalSecondViewController.h"

#import <UINavigationController+FDFullscreenPopGesture.h>
#import "UIImage+Color.h"

@interface NormalSecondViewController ()
@property (nonatomic, strong) UINavigationBar *customNavigationBar;
@property (nonatomic, strong) UIView *statusBarView;

@end

@implementation NormalSecondViewController

- (void)loadView {
    [super loadView];
    self.fd_prefersNavigationBarHidden = YES;
    
    [self setBackItems];
    
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    self.statusBarView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 20);
    self.customNavigationBar.frame = CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, 44);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.customNavigationBar pushNavigationItem:self.navigationItem animated:NO];
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    // fix 页面第一次展示时, 返回按钮会显示一下然后消失
    [self.customNavigationBar pushNavigationItem:self.navigationItem animated:NO];
    
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.customNavigationBar popNavigationItemAnimated:NO];
    
}


- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [self.customNavigationBar popNavigationItemAnimated:NO];
    
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

- (UINavigationBar *)customNavigationBar {
    if (!_customNavigationBar) {
        _customNavigationBar = [[UINavigationBar alloc] init];
        [_customNavigationBar setBackgroundImage:[UIImage imageWithColor:[UIColor redColor]] forBarMetrics:UIBarMetricsDefault];
        [self.view addSubview:self.customNavigationBar];
        
    }
    return _customNavigationBar;
}

- (UIView *)statusBarView {
    if (!_statusBarView) {
        _statusBarView = [UIView new];
        _statusBarView.backgroundColor = [UIColor redColor];
        [self.view addSubview:_statusBarView];
    }
    return _statusBarView;
}


@end
