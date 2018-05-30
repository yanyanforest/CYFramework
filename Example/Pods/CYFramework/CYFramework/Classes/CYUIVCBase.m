//
//  CYUIVCBase.m
//  CYOCFramework
//
//  Created by yanyan on 2018/5/27.
//  Copyright © 2018年 yanyan. All rights reserved.
//

#import "CYUIVCBase.h"

@interface CYUIVCBase ()

@end

@implementation CYUIVCBase

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    if (@available(iOS 11.0, *)){
        [[UIScrollView appearance] setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentNever];
    } else {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    [self addNavigationBar];
    [self addSubviews];
    
    if (self.object) {
        if ([self isViewLoaded]) {
            [self writeView];
        }
    }
}
- (void)addSubviews
{
    
}

- (void)addNavigationBar
{
    
}
- (void)writeView
{
   

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
