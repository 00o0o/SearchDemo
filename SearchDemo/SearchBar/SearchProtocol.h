//
//  SearchProtocol.h
//  SearchDemo
//
//  Created by Clover on 9/8/16.
//  Copyright © 2016 Clover. All rights reserved.
//

#ifndef SearchProtocol_h
#define SearchProtocol_h

#import <UIKit/UIKit.h>

@protocol SearchLogicProtocol <NSObject>

@required
- (void)searchWithKeyword:(NSString *)keyword;
@end

@protocol SearchResultProtocol <NSObject>

@required
- (void)searchResult:(id)result;
@end

#endif /* SearchProtocol_h */
