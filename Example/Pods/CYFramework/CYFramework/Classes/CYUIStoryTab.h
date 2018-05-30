//
//  CYUIStoryTab.h
//  CYFramework
//
//  Created by yanyan on 2018/5/28.
//

#import <Foundation/Foundation.h>

@interface CYUIStoryTab : NSObject
<UITabBarControllerDelegate>
@property(nonatomic,strong,readonly) UITabBarController *tabBarController;
@property(nonatomic,strong)NSArray *vcConfigs;
@end
