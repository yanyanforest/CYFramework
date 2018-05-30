//
//  CYUIVCBase.h
//  CYOCFramework
//
//  Created by yanyan on 2018/5/27.
//  Copyright © 2018年 yanyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CYUIVCBase : UIViewController
- (void)addSubviews;//添加控件
- (void)addNavigationBar;//设置navigationBar
- (void)writeView;// 写view的数据
@property(nonatomic,strong)id object;// 传值
@end
