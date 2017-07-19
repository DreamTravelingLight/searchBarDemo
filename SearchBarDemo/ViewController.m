//
//  ViewController.m
//  SearchBarDemo
//
//  Created by 汪泽天 on 2017/7/19.
//  Copyright © 2017年 霍. All rights reserved.
//
#define KGenericColor [UIColor colorWithRed:49/255.0 green:194/255.0 blue:124/255.0 alpha:1.0]

#import "ViewController.h"
#import "CustomSearchViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self addButton];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - add view
- (void)addButton {
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.center = self.view.center;
    btn.bounds = CGRectMake(0, 0, 120, 40);
    [btn setTitle:@"push" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pushAction) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = KGenericColor;
    [self.view addSubview:btn];
}

#pragma mark - button click
- (void)pushAction {
    
    CustomSearchViewController *search = [[CustomSearchViewController alloc] init];
    search.isChangeSearchBarFrame = YES;
    [self.navigationController pushViewController:search animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
