//
//  CYSystemInfoHelper.m
//  CYFramework
//
//  Created by yanyan on 2018/7/15.
//

#import "CYSystemInfoHelper.h"
@implementation CYSystemInfoHelper
+(instancetype)SharedInstance{
    static CYSystemInfoHelper *helper = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        helper = [[CYSystemInfoHelper alloc]init];
    });
    return helper;
}
+ (NSString *)StringForAppLocalVersion
{
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    CFShow((__bridge CFTypeRef)(infoDictionary));

    // app当前应用软件版本  比如：1.0.1
    NSString *app_Version = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
    return app_Version;
}
+ (NSString *)StringForAppBuildVersion
{
    // app build版本
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *app_build = [infoDictionary objectForKey:@"CFBundleVersion"];
    return app_build;
    
}
+ (NSString *)StringForAppDisplayName
{
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    // app名称
    NSString *app_Name = [infoDictionary objectForKey:@"CFBundleDisplayName"];
    return app_Name;

}
+ (NSString *)StringForAppBundleId
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];

}
#pragma mark - 关于设备 -
+(NSString *)currentDeviceSystemVersion
{
    NSString *phoneVersion = [[UIDevice currentDevice] systemVersion];
    return phoneVersion;
}
@end
