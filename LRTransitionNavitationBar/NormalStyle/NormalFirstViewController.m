//
//  NormalFirstViewController.m
//  LRTransitionNavitationBar
//
//  Created by lirui25 on 2018/7/18.
//  Copyright © 2018年 Baidu. All rights reserved.
//

#import "NormalFirstViewController.h"

#import "UIImage+Color.h"

@interface NormalFirstViewController ()

@end

@implementation NormalFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageWithColor: [UIColor colorWithRed:34/255.f green:36/255.f blue:41/255.f alpha:1]] forBarMetrics:UIBarMetricsDefault];

}

- (IBAction)dismiss:(id)sender {
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}


@end
