//
//  NSObject+weakStore.m
//  CopyDemo
//
//  Created by zhongxm on 15/12/29.
//  Copyright © 2015年 zhongxm. All rights reserved.
//

#import "NSObject+ZXM_RunAtDealloc.h"
#import <objc/runtime.h>

const void *runAtDeallocBlockKey = &runAtDeallocBlockKey;

@interface NSObject()

@end

@implementation NSObject (ZXM_RunAtDealloc)

- (void)runAtDealloc:(voidBlock)block{
    if (block) {
        ZXMBlockExecutor *executor = [[ZXMBlockExecutor alloc] initWithBlock:block];
        
        objc_setAssociatedObject(self,
                                 runAtDeallocBlockKey,
                                 executor,
                                 OBJC_ASSOCIATION_RETAIN);
    }
}


@end
