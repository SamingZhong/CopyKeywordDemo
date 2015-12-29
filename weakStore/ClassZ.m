//
//  ClassZ.m
//  CopyDemo
//
//  Created by zhongxm on 15/12/29.
//  Copyright © 2015年 zhongxm. All rights reserved.
//

#import "ClassZ.h"
#import "NSObject+ZXM_RunAtDealloc.h"
@implementation ClassZ


- (void)setObjectA:(NSObject *)objectA{
    _objectA = objectA;
    [_objectA runAtDealloc:^{
        NSLog(@"_objectA被销毁时候的调用!");
    }];
}
@end
