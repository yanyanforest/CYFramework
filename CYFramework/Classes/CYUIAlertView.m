//
//  CYUIAlertView.m
//  CYOCFramework
//
//  Created by yanyan on 2018/5/26.
//  Copyright © 2018年 yanyan. All rights reserved.
//

#import "CYUIAlertView.h"
@interface CYUIAlertView()
{
    UIAlertController *alertController;
    NSMutableArray *argArr;//other button 的 按钮数组
    NSInteger count;//按钮的个数
}
@end
//   取消按钮 index=0；destructive按钮的index 是 所有按钮的个数-1；other 按钮的index是根据取消的按钮排序+1。若没有取消按钮，那么other button 的index 也是
@implementation CYUIAlertView
-(CYUIAlertView *)initWithAlertViewTitle:(NSString *)title message:(NSString *)msg cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles,...
{
    
    if (self = [super init]) {
        va_list otherButtonList;
        NSString *otherTitleStr = nil;
        argArr = [NSMutableArray array];
        //在使用前要先用va_start(list, last_param)对list进行初始化，last_param为最右边的已知参数，表示list从last_param的下一个参数开始
        va_start(otherButtonList, otherButtonTitles);
        if (otherButtonTitles != nil) {
            [argArr addObject:otherButtonTitles];
            count++;
            while ((otherTitleStr = va_arg(otherButtonList, id))) {
                [argArr addObject:otherTitleStr];
                count++;
            }
        }
        
        va_end(otherButtonList);
        
        alertController = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
        [self addCancelActionWithTitle:cancelButtonTitle];
        __weak __typeof(&*self)weakSelf = self;
        for (int i = 0; i < argArr.count; i++) {
            NSString *otherTitle = argArr[i];
            UIAlertAction *action = [UIAlertAction actionWithTitle:otherTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                NSInteger index = i+1;//cancelButtonTitle ? i+1:i;
                if (weakSelf.block_clickIndex) {
                    weakSelf.block_clickIndex(index);
                }
            }];
            [alertController addAction:action];
        }
        
        
    }
    return self;
}

-(CYUIAlertView *)initWithActionSheetTitle:(NSString *)title message:(NSString *)msg cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSString *)otherButtonTitles,...
{
    if (self = [super init]) {
        va_list otherButtonList;
        NSString *otherTitleStr = nil;
        count = 0;
        argArr = [NSMutableArray array];
        //在使用前要先用va_start(list, last_param)对list进行初始化，last_param为最右边的已知参数，表示list从last_param的下一个参数开始
        va_start(otherButtonList, otherButtonTitles);
        if (otherButtonTitles) {
            [argArr addObject:otherButtonTitles];
            count++;
            while ((otherTitleStr = va_arg(otherButtonList, id))) {
                [argArr addObject:otherTitleStr];
                count++;
            }
            
        }
        va_end(otherButtonList);
        __weak __typeof(&*self)weakSelf = self;

        alertController = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleActionSheet];
        [self addCancelActionWithTitle:cancelButtonTitle];
        for (int i = 0; i < argArr.count; i++) {
            NSString *otherTitle = argArr[i];
            UIAlertAction *action = [UIAlertAction actionWithTitle:otherTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                NSInteger index = cancelButtonTitle ? i+1:i;
                if (weakSelf.block_clickIndex) {
                    weakSelf.block_clickIndex(index);
                }
            }];
            [alertController addAction:action];
        }
        [self addDestructiveActionWithTitle:destructiveButtonTitle];

        
    }
    return self;
}

-(void) showActionSheetInViewController:(UIViewController*)vc{
    [vc presentViewController:alertController animated:YES completion:nil];
    
}

- (void)showAlertViewInViewController:(UIViewController*)vc{
    [vc presentViewController:alertController animated:YES completion:nil];
    
}

- (void)addDestructiveActionWithTitle:(NSString *)destructiveButtonTitle
{
    if (destructiveButtonTitle) {
        __weak __typeof(&*self)weakSelf = self;
        count++;
        UIAlertAction *destructiveButton = [UIAlertAction actionWithTitle:destructiveButtonTitle style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action){
            if (weakSelf.block_destruct) {
                weakSelf.block_destruct();
                return;
            }
            if (weakSelf.block_clickIndex) {
                NSInteger index = self->count;
                weakSelf.block_clickIndex(index);
            }
            
            
        }];
        [alertController addAction:destructiveButton];
    }
}
- (void)addCancelActionWithTitle:(NSString *)cancelButtonTitle
{
    __weak __typeof(&*self)weakSelf = self;

    if(cancelButtonTitle){
        count++;
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelButtonTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action){
            if (weakSelf.block_cancel) {
                weakSelf.block_cancel();
                return;
            }
            if (weakSelf.block_clickIndex) {
                weakSelf.block_clickIndex(0);
            }
        }];
        [alertController addAction:cancelAction];
    }
}
@end
