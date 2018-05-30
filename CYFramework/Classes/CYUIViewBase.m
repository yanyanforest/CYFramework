//
//  CYUIViewBase.m
//  CYFramework
//
//  Created by yanyan on 2018/5/29.
//

#import "CYUIViewBase.h"

@implementation CYUIViewBase

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self addSubviews];
    }
    return self;
}
- (void)addSubviews
{
    
}
//- (void)setObject:(id)object
//{
//    _object = object;
//}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
