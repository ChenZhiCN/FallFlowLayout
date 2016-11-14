//
//  Good.h
//  fallFlow
//
//  Created by cz on 16/11/14.
//  Copyright © 2016年 cz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Good : NSObject


/**
 *  图片
 */
@property (nonatomic, copy) NSString *img;

/**
 *  价格
 */
@property (nonatomic, copy) NSString *price;

/**
 *  图片的宽度
 */
@property (nonatomic, assign) float w;

/**
 *  图片高度
 */
@property (nonatomic, assign) float h;

+ (instancetype)goodsWithDictionary:(NSDictionary *)dictionary;


@end
