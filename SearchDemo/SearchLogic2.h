//
//  SearchLogic2.h
//  SearchDemo
//
//  Created by Clover on 9/8/16.
//  Copyright © 2016 Clover. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SearchProtocol.h"

@interface SearchLogic2 : NSObject<SearchLogicProtocol>

@property (nonatomic, weak) id<SearchResultProtocol> searchResult;
@end
