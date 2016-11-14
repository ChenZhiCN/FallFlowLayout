//
//  CollectionViewCell.m
//  fallFlow
//
//  Created by cz on 16/11/14.
//  Copyright © 2016年 cz. All rights reserved.
//

#import "CollectionViewCell.h"
#import "UIImageView+WebCache.h"

@interface CollectionViewCell ()


@property (weak, nonatomic) IBOutlet UIImageView *bigImageView;

@end

@implementation CollectionViewCell

- (void)setGood:(Good *)good
{
    _good = good;
    [self.bigImageView sd_setImageWithURL:[NSURL URLWithString:good.img]];
//    UIImage *img = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:good.img]]];
//    NSLog(@"---%@---\n", NSStringFromCGSize(img.size));
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

@end
