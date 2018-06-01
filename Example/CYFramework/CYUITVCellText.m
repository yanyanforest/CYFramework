//
//  CYUITVCellText.m
//  CYFramework_Example
//
//  Created by yanyan on 2018/6/1.
//  Copyright © 2018年 yanyanforest@163.com. All rights reserved.
//

#import "CYUITVCellText.h"
@implementation CYUITVCellText

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (void)setObject:(id)object
{
    [super setObject:object];
    self.textLabel.text = [object valueForKey:@"name"];
    

}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
