//
//  BaseSearchBar.h
//  SearchDemo
//
//  Created by Clover on 9/8/16.
//  Copyright © 2016 Clover. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SearchProtocol.h"
#import "SearchBar.h"

@interface BaseSearchBar : UIView

@property (nonatomic, strong, readonly) SearchBar *searchBar;
@property (nonatomic, strong) id<SearchLogicProtocol> searchLogic;
@property (nonatomic, copy) NSString *hotKeywords;
@end
