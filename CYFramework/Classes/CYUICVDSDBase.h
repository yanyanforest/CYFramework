//
//  CYUICVDSDBase.h
//  CYFramework
//
//  Created by yanyan on 2018/5/30.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "CYBlock.h"
#define kCollectionCellDataSourceId @"content"
#define kCollectionSectionDataSourceId @"header"
@interface CYUICVDSDBase : NSObject
<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic,strong,readwrite)UICollectionView *collectionView;
@property(nonatomic,strong)NSObject *object;
@property(nonatomic,strong)NSDictionary *classesByCellReuseId;
@property(nonatomic,strong)NSString *cellReuseIdentifier;// 默认 cell_Id
@property(nonatomic,strong)CYBlock_Object block_itemSelected;
@property(nonatomic,strong)CYBlock_ObjectIndexpath block_itemAtIndexPathSelected;

-(id)itemAtIndexPath:(NSIndexPath *)indexpath;
@end
