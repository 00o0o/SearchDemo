//
//  SearchLogic2.m
//  SearchDemo
//
//  Created by Clover on 9/8/16.
//  Copyright © 2016 Clover. All rights reserved.
//

#import "SearchLogic2.h"

@implementation SearchLogic2

- (void)searchWithKeyword:(NSString *)keyword {
    if([self.searchResult respondsToSelector:@selector(searchResult:)]) {
        [self.searchResult searchResult:[NSString stringWithFormat:@"%@: %@", self, keyword]];
    }
}
@end
