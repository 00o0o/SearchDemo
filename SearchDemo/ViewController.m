//
//  ViewController.m
//  SearchDemo
//
//  Created by Clover on 9/8/16.
//  Copyright © 2016 Clover. All rights reserved.
//

#import "ViewController.h"
#import "BaseSearchBar.h"
#import "SearchLogic.h"
#import "SearchLogic2.h"
#import "HomeSearchBar.h"

@interface ViewController ()<SearchResultProtocol>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    BaseSearchBar *searchBar1 = [[BaseSearchBar alloc] initWithFrame:CGRectMake(20, 200, 220, 40)];
    searchBar1.backgroundColor = [UIColor blackColor];
    searchBar1.hotKeywords = @"iPhone 7";
    
    SearchLogic *searchLogic1 = [[SearchLogic alloc] init];
    searchLogic1.searchResult = self;
    searchBar1.searchLogic = searchLogic1;
    
    HomeSearchBar *searchBar2 = [[HomeSearchBar alloc] initWithFrame:CGRectMake(20, 300, 280, 40)];
    searchBar2.backgroundColor = [UIColor redColor];
    searchBar2.hotKeywords = @"iOS 10";
    
    SearchLogic2 *searchLogic2 = [[SearchLogic2 alloc] init];
    searchLogic2.searchResult = self;
    searchBar2.searchLogic = searchLogic2;
    
    [self.view addSubview:searchBar1];
    [self.view addSubview:searchBar2];
    
}

- (void)searchResult:(id)result {
    NSLog(@"result: %@", result);
}

@end
