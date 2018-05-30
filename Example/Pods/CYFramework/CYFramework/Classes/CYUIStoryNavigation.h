//
//  CYUIStoryNavigation.h
//  CYFramework
//
//  Created by yanyan on 2018/5/28.
//

#import <Foundation/Foundation.h>

@interface CYUIStoryNavigation : NSObject
<UINavigationControllerDelegate>
@property (nonatomic,strong,readonly) UINavigationController *navigationController;
@property(nonatomic,strong)UIViewController *rootController;
@end
