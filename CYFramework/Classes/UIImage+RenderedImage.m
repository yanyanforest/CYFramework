//
//  UIImage+RenderedImage.m
//  Edu_iOS
//
//  Created by yanyan on 2017/9/21.
//  Copyright © 2017年 yanyan. All rights reserved.
//

#import "UIImage+RenderedImage.h"

@implementation UIImage(RenderedImage)
+ (UIImage *)imageWithColor:(UIColor *)color renderSize:(CGSize)size {
    UIImage *image = nil;
    UIGraphicsBeginImageContext(size);
    [color setFill];
    CGContextFillRect(UIGraphicsGetCurrentContext(), CGRectMake(0., 0., size.width, size.height));
    image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
@end
