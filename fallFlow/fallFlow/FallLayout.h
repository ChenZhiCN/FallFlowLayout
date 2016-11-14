//
//  FallLayout.h
//  fallFlow
//
//  Created by cz on 16/11/14.
//  Copyright © 2016年 cz. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WaterPullLayoutDelegate <NSObject>

@required
/**
 *  返回cell的大小(其实就是获取图片的原始宽高比)
 */
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath;

@end



@interface FallLayout : UICollectionViewLayout

@property (nonatomic, weak) id<WaterPullLayoutDelegate> delegate;

/**
 *  列数， 默认是2列
 */
@property (nonatomic, assign) NSInteger column;

/**
 *  距离上下左右的距离
 */
@property (nonatomic, assign) UIEdgeInsets sectionInsets;

/**
 *  上下两个item的距离
 */
@property (nonatomic, assign) CGFloat lineSpacing;

/**
 *  左右两个item的距离
 */
@property (nonatomic, assign) CGFloat interitemSpacing;



@end
