  //
//  CYUIStoryTab.m
//  CYFramework
//
//  Created by yanyan on 2018/5/28.
//

#import "CYUIStoryTab.h"
@interface CYUIStoryTab()
{
    UITabBarController *_tabBarController;
}
@end
@implementation CYUIStoryTab

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
-(UITabBarController *)tabBarController{
    if (!_tabBarController) {
        _tabBarController = [[UITabBarController alloc]init];
        _tabBarController.delegate = self;
    }
    return _tabBarController;
}
-(void)setVcConfigs:(NSArray *)vcConfigs
{
    _vcConfigs = vcConfigs;
    NSMutableArray *vcsArr = [NSMutableArray array];
    for (UIViewController *vc in _vcConfigs) {
        if (!vc.tabBarItem.title) {
            vc.tabBarItem.title = vc.title;
        }
        [vcsArr addObject:vc];
    }
    self.tabBarController.viewControllers = vcsArr;
}

@end
