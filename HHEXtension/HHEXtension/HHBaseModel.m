//
//  HHBaseModel.m
//  HHEXtension
//
//  Created by LXH on 16/9/14.
//  Copyright © 2016年 HHLM. All rights reserved.
//

#import "HHBaseModel.h"

@interface HHBaseModel ()
- (void)privateMethod;
@end

@implementation HHBaseModel
- (void)publicMethod {
    NSLog(@"公用");
}
- (void)privateMethod {
    NSLog(@"私有");
}
- (void)setHhh:(NSString *)hhh {
    NSLog(@"hhh->:%@",hhh);
}
@end
