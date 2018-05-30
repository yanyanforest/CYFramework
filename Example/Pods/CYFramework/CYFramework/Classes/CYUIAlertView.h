//
//  CYUIAlertView.h
//  CYOCFramework
//
//  Created by yanyan on 2018/5/26.
//  Copyright © 2018年 yanyan. All rights reserved.
//
// 适用于iOS 9 及 以上版本
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CYBlock.h"

@interface CYUIAlertView : NSObject
- (CYUIAlertView *)initWithAlertViewTitle:(NSString *)title message:(NSString *)msg cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles,... NS_REQUIRES_NIL_TERMINATION;
- (CYUIAlertView *)initWithActionSheetTitle:(NSString *)title message:(NSString *)msg cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSString *)otherButtonTitles,... NS_REQUIRES_NIL_TERMINATION;
- (void)showActionSheetInViewController:(UIViewController *)vc;
- (void)showAlertViewInViewController:(UIViewController *)vc;
@property(nonatomic,strong)CYBlock_void block_cancel;//点击取消按钮
@property(nonatomic,strong)CYBlock_void block_destruct;//点击 destructiveButton
@property(nonatomic,strong)CYBlock_Integer block_clickIndex;//actionsheet点击其他的按钮，下标从0开始
@end
