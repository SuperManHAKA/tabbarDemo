//
//  oneViewController.m
//  tabbarDemo
//
//  Created by HAKA on 2017/6/29.
//  Copyright © 2017年 李石磊. All rights reserved.
//

#import "oneViewController.h"
#import "testTwoTabBar.h"
#import "threeViewController.h"
#import "testOneTabBar.h"
@interface oneViewController ()

@end

@implementation oneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    self.view.backgroundColor = [UIColor blueColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor redColor];
    button.frame = CGRectMake(100, 100, 100, 100);
    [button addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    // Do any additional setup after loading the view.
}
- (void)viewWillAppear:(BOOL)animated
{
    self.tabBarController.tabBar.hidden = NO;
}
- (void)test{
    
    testTwoTabBar * test = [[testTwoTabBar alloc]init];
//    self.navigationController.navigationBar.hidden = YES ;
    self.tabBarController.tabBar.hidden = YES ;
    [self.navigationController pushViewController:test animated:YES];
      
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
