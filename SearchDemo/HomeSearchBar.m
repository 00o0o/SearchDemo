//
//  HomeSearchBar.m
//  SearchDemo
//
//  Created by Clover on 9/8/16.
//  Copyright © 2016 Clover. All rights reserved.
//

#import "HomeSearchBar.h"

@implementation HomeSearchBar

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        self.searchBar.textField.layer.cornerRadius = self.searchBar.textField.frame.size.height/2;
        
    }
    
    return self;
}

@end
