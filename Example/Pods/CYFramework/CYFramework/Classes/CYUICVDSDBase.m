//
//  CYUICVDSDBase.m
//  CYFramework
//
//  Created by yanyan on 2018/5/30.
//

#import "CYUICVDSDBase.h"
#import <CYUICVCellBase.h>
@implementation CYUICVDSDBase
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.cellReuseIdentifier = @"cell_Id";
    }
    return self;
}
-(id)itemAtIndexPath:(NSIndexPath *)indexpath
{
    return ((NSArray *)((NSArray *)[self.object valueForKey:kCollectionCellDataSourceId])[indexpath.section])[indexpath.row];
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    if (!self.object) {
        return  0;
    }
    return ((NSArray *)[self.object valueForKey:kCollectionCellDataSourceId]).count;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (!self.object) {
        return  0;
    }
    return ((NSArray *)((NSArray *)[self.object valueForKey:kCollectionCellDataSourceId]) [section]).count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CYUICVCellBase *cell = [collectionView dequeueReusableCellWithReuseIdentifier:self.cellReuseIdentifier forIndexPath:indexPath];
    cell.object = [self itemAtIndexPath:indexPath];
    return cell;
    
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    id item = [self itemAtIndexPath:indexPath];
    if (self.block_itemSelected) {
        self.block_itemSelected(item);
        return;
    }
    if (self.block_itemAtIndexPathSelected) {
        self.block_itemAtIndexPathSelected(item,indexPath);
    }
}
@end
