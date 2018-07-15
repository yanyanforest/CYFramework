//
//  CYSystemInfoHelper.h
//  CYFramework
//
//  Created by yanyan on 2018/7/15.
//

#import <Foundation/Foundation.h>

@interface CYSystemInfoHelper : NSObject
+(NSString *)StringForAppLocalVersion;// 获取app本地当前的版本号
+(NSString *)StringForAppBuildVersion;// 获取app当前的int版本号
+(NSString *)StringForAppDisplayName;// 获取当前app 的当前显示的名字
+(NSString *)StringForAppBundleId;// 获取当前app 的bundleId
+(NSString *)currentDeviceSystemVersion;// 当前设备的版本号
@end
