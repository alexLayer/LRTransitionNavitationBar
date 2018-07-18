//
//  LRBaseViewController.m
//  NavBar
//
//  Created by alex on 2018/7/18.
//  Copyright © 2018年 foxing. All rights reserved.
//

#import "LRBaseViewController.h"


@interface LRBaseViewController ()
@property (nonatomic, strong) UIView *topBarView;
@property (nonatomic, strong) UIView *navigationBarSeperateLine;    //导航栏底部的分割线

@end

@implementation LRBaseViewController

- (void)loadView {
    [super loadView];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    [self.topBarView addSubview:self.navigationBarSeperateLine];
    [self.view addSubview:self.topBarView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.topBarView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64);
    self.navigationBarSeperateLine.frame = CGRectMake(0, 63.5, [UIScreen mainScreen].bounds.size.width, 1);
    self.navigationBarSeperateLine.backgroundColor = [UIColor blackColor];
}


- (UIView *)topBarView {
    if (!_topBarView) {
        _topBarView = [UIView new];
        _topBarView.layer.masksToBounds = YES;
        _topBarView.backgroundColor = [UIColor whiteColor];
    }
    return _topBarView;
}

- (UIView *)navigationBarSeperateLine {
    if (!_navigationBarSeperateLine) {
        _navigationBarSeperateLine = [UIView new];
        
    }
    return _navigationBarSeperateLine;
}

- (void)setTopBarBackgroundColor:(UIColor *)topBarBackgroundColor {
    _topBarBackgroundColor = topBarBackgroundColor;
    self.topBarView.backgroundColor = topBarBackgroundColor;
}

- (void)setHideNavigationBarSeperateLine:(BOOL)hideNavigationBarSeperateLine {
    _hideNavigationBarSeperateLine = hideNavigationBarSeperateLine;
    self.navigationBarSeperateLine.hidden = _hideNavigationBarSeperateLine;
}

@end
