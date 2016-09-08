//
//  BaseSearchBar.m
//  SearchDemo
//
//  Created by Clover on 9/8/16.
//  Copyright © 2016 Clover. All rights reserved.
//

#import "BaseSearchBar.h"

@interface BaseSearchBar ()

@property (nonatomic, strong, readwrite) SearchBar *searchBar;
@end

@implementation BaseSearchBar

#pragma mark - LifeCycle
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        [self addSubview:self.searchBar];
    }
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self) {
        [self addSubview:self.searchBar];
    }
    
    return self;
}

#pragma mark - Private Methods
- (SearchBar *)searchBar {
    if(!_searchBar) {
        _searchBar = [[SearchBar alloc] initWithFrame:self.bounds];
    }
    
    return _searchBar;
}

- (void)setSearchLogic:(__strong id<SearchLogicProtocol>)searchLogic {
    _searchLogic = searchLogic;
    self.searchBar.searchLogic = _searchLogic;
}

- (void)setHotKeywords:(NSString *)hotKeywords {
    _hotKeywords = hotKeywords;
    if(_hotKeywords.length) {
        self.searchBar.textField.placeholder = _hotKeywords;
        self.searchBar.hotSearch = YES;
    }
}

@end
