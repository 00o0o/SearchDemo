//
//  SearchBar.m
//  SearchDemo
//
//  Created by Clover on 9/8/16.
//  Copyright © 2016 Clover. All rights reserved.
//

#import "SearchBar.h"

@implementation SearchBar

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        [self addSubview:self.textField];
        [self addSubview:self.searchButton];
    }
    
    return self;
}

#pragma mark - UITextFieldDelegate

#pragma mark - private methods
- (void)searchButtonAction {
    NSString *text = [self.textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    if(!text.length && self.hotSearch) {
        text = self.textField.placeholder;
    }
    if(!text.length) {
        return;
    }
    if([self.searchLogic respondsToSelector:@selector(searchWithKeyword:)]) {
        [self.searchLogic searchWithKeyword:text];
    }
}

#pragma mark - getter/setter
- (UITextField *)textField {
    if(!_textField) {
        _textField = [[UITextField alloc] initWithFrame:CGRectMake(15, 5, self.frame.size.width - 80 , self.frame.size.height - 10)];
        _textField.backgroundColor = [UIColor whiteColor];
        _textField.leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, _textField.frame.size.height)];
        _textField.leftViewMode = UITextFieldViewModeAlways;
        _textField.placeholder = @"搜索关键字";
        _textField.font = [UIFont systemFontOfSize:14];
        _textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    }
    
    return _textField;
}

- (UIButton *)searchButton {
    if(!_searchButton) {
        _searchButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _searchButton.backgroundColor = [UIColor whiteColor];
        _searchButton.frame = CGRectMake(self.textField.frame.origin.x + self.textField.frame.size.width + 10, 5, 40, self.frame.size.height - 10);
        _searchButton.titleLabel.font = [UIFont systemFontOfSize:14];
        [_searchButton setTitle:@"搜索" forState:UIControlStateNormal];
        [_searchButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_searchButton addTarget:self action:@selector(searchButtonAction) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _searchButton;
}

@end
