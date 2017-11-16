//
//  testOneTabBar.m
//  tabbarDemo
//
//  Created by HAKA on 2017/6/29.
//  Copyright © 2017年 李石磊. All rights reserved.
//

#import "testOneTabBar.h"
#import "oneViewController.h"
#import "twoViewController.h"
@interface testOneTabBar ()

@end

@implementation testOneTabBar

- (void)viewDidLoad {
    [super viewDidLoad];
    
    oneViewController *QuizVC = [[oneViewController alloc]init];
    QuizVC.tabBarItem.title = @"发现";
    QuizVC.tabBarItem.image = [UIImage imageNamed:@"smiley_187"];
    UINavigationController *QuizNav = [[UINavigationController alloc]initWithRootViewController:QuizVC];
    
    twoViewController *MoreVC = [[twoViewController alloc]init];
    MoreVC.tabBarItem.title = @"我";
    UINavigationController *MoreNav = [[UINavigationController alloc]initWithRootViewController:MoreVC];
    MoreVC.tabBarItem.image = [UIImage imageNamed:@"smiley_196"];
    [self setViewControllers:@[QuizNav,MoreNav] animated:YES];
    
    // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
