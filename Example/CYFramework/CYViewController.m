//
//  CYViewController.m
//  CYFramework
//
//  Created by yanyanforest@163.com on 05/29/2018.
//  Copyright (c) 2018 yanyanforest@163.com. All rights reserved.
//

#import "CYViewController.h"
#import <CYFramework/CYUITVDSDBase.h>
#import <CYFramework/CYUITVDSDBridge.h>
#import "CYUITVCellText.h"

@interface CYViewController ()
@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)CYUITVDSDBase *dsd;
@property(nonatomic,strong)NSMutableArray *dataSource;
@end

@implementation CYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
}
- (void)requestData:(NSInteger)index{
    NSMutableArray *dataIndex = [NSMutableArray array];
    for (int i = 0; i < 10; i++) {
        id obj = @{@"name":[NSString stringWithFormat:@"section%ld-%d",(long)index,i]};
        [dataIndex addObject:obj];
    
    }
    [self.dataSource addObject:dataIndex];
    NSLog(@"-------%@",self.dataSource);
}
- (NSMutableArray *)dataSource
{
    if (!_dataSource) {
        _dataSource = [NSMutableArray array]; //[[NSMutableArray alloc]init];
    }
    return _dataSource;
}

- (void)addSubviews
{
    [super addSubviews];
    [self.view addSubview:self.tableView];
    [self requestData:0];
    [self requestData:1];
    _dsd.object = @{kTableCellDataSourceId :self.dataSource};
    
    [self.tableView reloadData];
}
- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _dsd = [[CYUITVDSDBase alloc]init];
        _dsd.classesIdbyReusedCells = @{@"cell":@"CYUITVCellText"};
        [CYUITVDSDBridge bridge:_tableView dsd:_dsd]; 
    }
    return _tableView;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
