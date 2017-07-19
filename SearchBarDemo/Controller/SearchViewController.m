//
//  SearchViewController.m
//  SearchBarDemo
//
//  Created by 汪泽天 on 2017/7/19.
//  Copyright © 2017年 霍. All rights reserved.
//
#define KGenericColor [UIColor colorWithRed:49/255.0 green:194/255.0 blue:124/255.0 alpha:1.0]

#define kScreenWidth ([UIScreen mainScreen].bounds.size.width)
#define kScreenHeight ([UIScreen mainScreen].bounds.size.height)

#import "SearchViewController.h"
#import "WMSearchBar.h"

@interface SearchViewController ()<UISearchBarDelegate>

@property(nonatomic,strong)WMSearchBar *searchBar;

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    [self addSearchBar];
    // Do any additional setup after loading the view.
}

#pragma mark - add view

- (void)addSearchBar {
    
    _searchBar = [self addSearchBarWithFrame:CGRectMake(0, 0, kScreenWidth - 2 * 44 - 2 * 15, 44)];
    UIView *wrapView = [[UIView alloc] initWithFrame:_searchBar.frame];
    [wrapView addSubview:_searchBar];
    self.navigationItem.titleView = wrapView;
}

- (WMSearchBar *)addSearchBarWithFrame:(CGRect)frame {
    
    self.definesPresentationContext = YES;
    
    WMSearchBar *searchBar = [[WMSearchBar alloc]initWithFrame:frame];
    searchBar.delegate = self;
    searchBar.placeholder = @"查询";
    [searchBar setShowsCancelButton:NO];
    [searchBar setTintColor:KGenericColor];
    
    if (self.isChangeSearchBarFrame) {
        
        CGFloat height = searchBar.bounds.size.height;
        CGFloat top = (height - 20.0) / 2.0;
        CGFloat bottom = top;
        
        searchBar.contentInset = UIEdgeInsetsMake(top, 0, bottom, 0);
    }
    return searchBar;
}

#pragma mark - searchBar delegate
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    
    [searchBar resignFirstResponder];
}

#pragma mark - button click
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [_searchBar resignFirstResponder];
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
