//
//  SearchBar.h
//  SearchDemo
//
//  Created by Clover on 9/8/16.
//  Copyright © 2016 Clover. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SearchProtocol.h"

@interface SearchBar : UIView

@property (nonatomic, weak) id<SearchLogicProtocol> searchLogic;

@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UIButton *searchButton;
@property (nonatomic, assign) BOOL hotSearch;
@end
