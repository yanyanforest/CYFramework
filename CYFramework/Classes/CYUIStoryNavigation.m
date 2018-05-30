//
//  CYUIStoryNavigation.m
//  CYFramework
//
//  Created by yanyan on 2018/5/28.
//

#import "CYUIStoryNavigation.h"
@interface CYUIStoryNavigation(){
    UINavigationController *_navigationController;
}
@end
@implementation CYUIStoryNavigation

-(UINavigationController *)navigationController{
    if (!_navigationController) {
        NSAssert(_rootController, @"rootController is nil,please init it before use");
        _navigationController = [[UINavigationController alloc]initWithRootViewController:_rootController];
    }
    return _navigationController;
}
@end
