//
//  CYNXUITVCellPay.m
//  CYFramework_Example
//
//  Created by yanyan on 2018/6/1.
//  Copyright © 2018年 yanyanforest@163.com. All rights reserved.
//

#import "CYNXUITVCellPay.h"
#define SCREENWIDTH [UIScreen mainScreen].bounds.size.width

@interface CYNXUITVCellPay()
@property(nonatomic,strong)UILabel *balanceLabel;
@property(nonatomic,strong)UIButton *accessBtn;
@end
@implementation CYNXUITVCellPay

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier]) {
        
    }
    return self;
}
- (void)addSubviews
{
    [super addSubviews];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.imageView.frame = CGRectMake(20.0, 10.0, 40.0, 40.0);
    self.textLabel.frame = CGRectMake(80.0, 10.0, SCREENWIDTH-150.0, 20.0);
    self.textLabel.font = [UIFont systemFontOfSize:16.0];
    self.detailTextLabel.font = [UIFont systemFontOfSize:14.0];
    self.detailTextLabel.textColor = [UIColor lightGrayColor];
    self.detailTextLabel.text = @"付款";
    [self.contentView addSubview:self.balanceLabel];
    _accessBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [_accessBtn setImage:[UIImage imageNamed:@"sel002"] forState:UIControlStateNormal];
    [_accessBtn setImage:[UIImage imageNamed:@"sel001"] forState:UIControlStateSelected];
    _accessBtn.userInteractionEnabled = NO;
    _accessBtn.frame = CGRectMake(0, 0, 30, 30);
    self.accessoryView = _accessBtn;
}
 - (UILabel *)balanceLabel
{
    if (!_balanceLabel) {
        _balanceLabel = [[UILabel alloc]initWithFrame:CGRectMake(160.0, 10, 80.0, 20.0)];
        [_balanceLabel setFont:[UIFont systemFontOfSize:14.0]];
        _balanceLabel.textColor = [UIColor lightGrayColor];
        //        _balanceLabel.text = [NSString stringWithFormat:@"剩余%@",user.money];
        _balanceLabel.backgroundColor = [UIColor clearColor];
        _balanceLabel.adjustsFontSizeToFitWidth = YES;
    }
    return _balanceLabel;
}
- (void)setObject:(id)object
{
    [super setObject:object];
    self.imageView.image = [UIImage imageNamed:@"weixinPayIcon"];
    self.textLabel.text = @"微信支付";
    self.balanceLabel.text = @"余额0.34元";
    self.detailTextLabel.text = @"付款";
    
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    _accessBtn.selected = selected;
}

@end
