//
//  NSObject+weakStore.h
//  CopyDemo
//
//  Created by zhongxm on 15/12/29.
//  Copyright © 2015年 zhongxm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZXMBlockExecutor.h"
@interface NSObject (ZXM_RunAtDealloc)


- (void)runAtDealloc:(voidBlock)block;
@end
