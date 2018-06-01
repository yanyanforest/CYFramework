//
//  CYViewController.m
//  CYFramework
//
//  Created by yanyanforest@163.com on 05/29/2018.
//  Copyright (c) 2018 yanyanforest@163.com. All rights reserved.
//

#import "CYViewController.h"
//#import <CYFramework/CYFramework.h>
@interface CYViewController ()
@property(nonatomic,strong)UITableView *tableView;
//@property(nonatomic,strong)
@end

@implementation CYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView
    }
    return _tableView;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
