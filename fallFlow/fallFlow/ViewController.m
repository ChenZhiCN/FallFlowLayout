//
//  ViewController.m
//  fallFlow
//
//  Created by cz on 16/11/14.
//  Copyright © 2016年 cz. All rights reserved.
//

#import "ViewController.h"
#import "FallLayout.h"
#import "CollectionViewCell.h"
#import "Good.h"

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, weak) UICollectionView *colView;

@property (nonatomic, strong) NSMutableArray *dataSource;

@end

@implementation ViewController

- (NSMutableArray *)dataSource
{
    if (!_dataSource) {
        _dataSource = [NSMutableArray array];
    }
    return _dataSource;
}

- (void)handlePlist
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"1.plist" ofType:nil];
    
    NSArray *arr = [NSArray arrayWithContentsOfFile:path];
    
    for (NSDictionary *dic in arr) {
        Good *good = [Good goodsWithDictionary:dic];
        [self.dataSource addObject:good];
    }
    [self.colView reloadData];
    
}

- (UICollectionView *)colView
{
    if (!_colView) {
        
        FallLayout *layout = [[FallLayout alloc] init];
        UICollectionView *col = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) collectionViewLayout:layout];
        col.delegate = self;
        col.dataSource = self;
        col.backgroundColor = [UIColor blackColor];
        [col registerNib:[UINib nibWithNibName:@"CollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"CollectionViewCell"];
        [self.view addSubview:col];
        _colView = col;
    }
    return _colView;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.dataSource.count;
}


- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionViewCell" forIndexPath:indexPath];
    
    cell.good = self.dataSource[indexPath.item];
    
    return cell;
}

/**
 *  返回cell的大小
 */
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    Good *goods = self.dataSource[indexPath.item];
    
    return CGSizeMake(goods.w, goods.h + 20);
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self handlePlist];
}


@end
