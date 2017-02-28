//
//  HHItemView.m
//  HHEXtension
//
//  Created by LXH on 2016/12/14.
//  Copyright © 2016年 HHLM. All rights reserved.
//

#import "HHItemView.h"


@interface HHItemView ()
@property (nonatomic, strong) UILabel *nameLab;
@property (nonatomic, strong) UIView *markView;
@end

@implementation HHItemView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.nameLab];
        [self addSubview:self.markView];
    }
    return self;
}
- (void)setItemName:(NSString *)itemName {
    CGFloat witdh = [self textWidthWithFontSize:self.nameLab.font Text:itemName];
    if (witdh > 80) {
        witdh = 80;
    }if (witdh < 20) {
        witdh = 20;
    }
    self.nameLab.text = itemName;
    CGRect rect = self.nameLab.frame;
    rect.size.width = witdh;
    self.nameLab.frame = rect;
    
    CGRect rect1  =  self.markView.frame;
    rect1.origin.x = CGRectGetMaxX(rect) + 5;
    
    self.markView.frame= rect1;
    
    CGRect rect2 = self.frame;
    rect2.size.width = CGRectGetMaxX(rect1)+10;
    rect2.size.height = 40;
    self.frame = rect2;
    
    self.layer.borderWidth =1;
    self.layer.borderColor =[UIColor blackColor].CGColor;
    
}
//计算本文宽度
- (CGFloat)textWidthWithFontSize:(UIFont *)fontSize
                            Text:(NSString *)text
{
    NSDictionary *attr = @{NSFontAttributeName : fontSize};
    CGRect size = [text boundingRectWithSize:CGSizeMake(MAXFLOAT, self.frame.size.height)
                                     options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin
                                  attributes:attr
                                     context:nil];
    return size.size.width;
}


- (UILabel *)nameLab {
    if (!_nameLab) {
        _nameLab = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 50, 20)];
        _nameLab.textColor = [UIColor blueColor];
        _nameLab.font =[UIFont systemFontOfSize:16];
    }
    return _nameLab;
}
- (UIView *)markView {
    if (!_markView) {
        _markView = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, 20, 20)];
        _markView.backgroundColor = [UIColor redColor];
    }
    return _markView;
}
@end
