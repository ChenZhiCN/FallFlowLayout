//
//  Good.m
//  fallFlow
//
//  Created by cz on 16/11/14.
//  Copyright © 2016年 cz. All rights reserved.
//

#import "Good.h"

@implementation Good

+ (instancetype)goodsWithDictionary:(NSDictionary *)dictionary
{
    Good *goods = [[self alloc] init];
    [goods setValuesForKeysWithDictionary:dictionary];
    
    return goods;
}


@end
