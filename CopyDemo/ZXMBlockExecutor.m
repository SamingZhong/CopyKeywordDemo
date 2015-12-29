//
//  CYLBlockExecutor.m
//  CopyDemo
//
//  Created by zhongxm on 15/12/29.
//  Copyright © 2015年 zhongxm. All rights reserved.
//

#import "ZXMBlockExecutor.h"
@interface ZXMBlockExecutor()
@property (nonatomic, copy) voidBlock block;

@end

@implementation ZXMBlockExecutor

- (instancetype)initWithBlock:(voidBlock)block{
    if (self = [super init]) {
        _block = [block copy];
    }
    return self;
}


- (void)dealloc
{
    _block ? _block() : nil;
}

@end
