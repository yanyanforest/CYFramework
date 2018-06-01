//
//  CYUITVDSDBase.h
//  CYFramework
//
//  Created by yanyan on 2018/5/30.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CYBlock.h"
#define kTableCellDataSourceId @"content"
#define kTableSectionDataSourceId @"header"
#define kTableSectionSystemTitleDataSourceId @"headerTitle"//系统显示的titles, 对应的数组是 字符串

typedef enum CYTableViewCellSelectionType{
    CYTableViewCellSelectionTypeNone,
    CYTableViewCellSelectionTypeSingleSelection,
    CYTableViewCellSelectionTypeMultipleSelection
}CYTableViewCellSelectionType;
@interface CYUITVDSDBase : NSObject<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)CYBlock_Object block_itemSelected;
@property(nonatomic,strong)CYBlock_Object block_indexPathSelected;
@property(nonatomic,strong)CYBlock_ObjectIndexpath block_itemAtIndexPathSelected;
@property(nonatomic,strong)NSString *reusedCellIdentifier;
@property(nonatomic,strong)NSDictionary *classesIdbyReusedCells;

@property(nonatomic,strong)id object;//tableView的数据[kTableCellDataSourceId:[[]]]
@property(nonatomic,assign)CYTableViewCellSelectionType selectionType;//cell的单选或者多选
@property(nonatomic,assign)BOOL hasSelectedStyle;//是否有选中效果 默认 有选中效果。
@property(nonatomic,strong)NSArray *defaultSelected; //默认选中的cell
@property(nonatomic,strong)NSArray *defaultSelectedObject; // 默认选中的object

@property(nonatomic,assign)BOOL isForbidEditing;//是否禁止编辑 默认yes禁止编辑
@property(nonatomic,strong)NSDictionary *classesIdBySupplementView;
@property(nonatomic,assign)CGFloat sectionHeaderHeight; // 默认sectionHeaderHeight = 0,没有header

@end
