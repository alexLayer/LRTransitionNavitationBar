//
//  NormalLRBaseNoTransitionViewController.m
//  LRTransitionNavitationBar
//
//  Created by lirui25 on 2018/7/18.
//  Copyright © 2018年 Baidu. All rights reserved.
//

#import "LRBaseNoTransitionViewController.h"

#import <UINavigationController+FDFullscreenPopGesture.h>
#import "UIImage+Color.h"

@interface LRBaseNoTransitionViewController ()
@property (nonatomic, strong) UINavigationBar *customNavigationBar;
@property (nonatomic, strong) UIView *statusBarView;

@end

@implementation LRBaseNoTransitionViewController

- (void)loadView {
    [super loadView];
    self.fd_prefersNavigationBarHidden = YES;
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

- (void)setTopBarBackgroundColor:(UIColor *)topBarBackgroundColor {
    _topBarBackgroundColor = topBarBackgroundColor;
    [self.customNavigationBar setBackgroundImage:[UIImage imageWithColor:_topBarBackgroundColor] forBarMetrics:UIBarMetricsDefault];
    self.statusBarView.backgroundColor = _topBarBackgroundColor;

}

- (UINavigationBar *)customNavigationBar {
    if (!_customNavigationBar) {
        _customNavigationBar = [[UINavigationBar alloc] init];
        [_customNavigationBar setBackgroundImage:[UIImage imageWithColor:[UIColor lightGrayColor]] forBarMetrics:UIBarMetricsDefault];
        [self.view addSubview:_customNavigationBar];
    }
    return _customNavigationBar;
}

- (UIView *)statusBarView {
    if (!_statusBarView) {
        _statusBarView = [UIView new];
        _statusBarView.backgroundColor = [UIColor lightGrayColor];
        [self.view addSubview:_statusBarView];
    }
    return _statusBarView;
}


@end
