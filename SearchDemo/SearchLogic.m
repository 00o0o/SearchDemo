//
//  SearchLogic.m
//  SearchDemo
//
//  Created by Clover on 9/8/16.
//  Copyright © 2016 Clover. All rights reserved.
//

#import "SearchLogic.h"

@implementation SearchLogic

- (void)searchWithKeyword:(NSString *)keyword {
    if([self.searchResult respondsToSelector:@selector(searchResult:)]) {
        [self.searchResult searchResult:keyword];
    }
}
@end
