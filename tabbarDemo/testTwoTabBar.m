//
//  testTwoTabBar.m
//  tabbarDemo
//
//  Created by HAKA on 2017/6/29.
//  Copyright © 2017年 李石磊. All rights reserved.
//

#import "testTwoTabBar.h"
#import "threeViewController.h"
#import "fourViewController.h"
@interface testTwoTabBar ()

@end

@implementation testTwoTabBar

- (void)viewDidLoad {
    [super viewDidLoad];
    
    threeViewController *QuizVC = [[threeViewController alloc]init];
    QuizVC.tabBarItem.title = @"11";
    QuizVC.tabBarItem.image = [UIImage imageNamed:@"smiley_223"];
    UINavigationController *QuizNav = [[UINavigationController alloc]initWithRootViewController:QuizVC];
    
    fourViewController *MoreVC = [[fourViewController alloc]init];
    MoreVC.tabBarItem.title = @"22";
    MoreVC.tabBarItem.image = [UIImage imageNamed:@"smiley_213"];
    UINavigationController *MoreNav = [[UINavigationController alloc]initWithRootViewController:MoreVC];
    
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
