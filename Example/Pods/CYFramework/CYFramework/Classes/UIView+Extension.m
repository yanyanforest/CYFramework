//
//  UIView+Extension.m
//
//
//  Created by yanyan on 16/11/7.
//  Copyright © 2016年 yanyan. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

//重写x属性的 getter方法，返回控件的x值
- (CGFloat)x{
    return self.frame.origin.x;
}
//重写x属性的 setter方法  设置控件的x值
- (void)setX:(CGFloat)x{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}


- (CGFloat)y{
    return self.frame.origin.y;
}

- (void)setY:(CGFloat)y{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}
- (CGFloat)centerX
{
    return self.x + self.width/2;
}
- (CGFloat)centerY
{
    return self.y + self.height/2.0;
}
- (void)setCenterY:(CGFloat)centerY
{
    CGRect frame = self.frame;
    frame.origin.y = centerY - self.height/2;
    self.frame = frame;
}
- (void)setCenterX:(CGFloat)centerX
{
    CGRect frame = self.frame;
    frame.origin.x = centerX - self.width/2;
    self.frame = frame;
}
- (CGFloat)width{
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)height{
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}
- (CGSize)size
{
    return self.frame.size;
}
- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}
@end
