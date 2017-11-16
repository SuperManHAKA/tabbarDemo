//
//  ViewController.m
//  tabbarDemo
//
//  Created by HAKA on 2017/6/29.
//  Copyright © 2017年 李石磊. All rights reserved.
//

#import "ViewController.h"
#import "testOneTabBar.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    testOneTabBar *tabbar = [[testOneTabBar alloc] init];
    NSArray *array = [UIApplication sharedApplication].windows;
    tabbar.tabBar.tintColor = [UIColor redColor];
    UIWindow *window = array[0];
    window.rootViewController = tabbar;

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
