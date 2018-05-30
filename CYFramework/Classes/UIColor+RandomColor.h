//
//  UIColor+RandomColor.h
//  KHMall
//
//  Created by 198 on 16/5/21.
//  Copyright © 2016年 198. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (RandomColor)
+(UIColor *) randomColor;
@end

@interface UIColor (Hex)
//颜色转换 IOS中十六进制的颜色转换为UIColor
+ (UIColor *)colorWithHexString:(NSString *)hexString;
//类扩展之Hex值颜色转换 0x000000
+ (UIColor *)colorWithHex:(long)hexColor;
+ (UIColor *)colorWithHex:(long)hexColor alpha:(CGFloat) alpha;
@end
@interface UIColor (RGB)
//颜色转换 rgb值转换为UIColor 
+ (UIColor *)colorWithRGBRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)black;

@end
