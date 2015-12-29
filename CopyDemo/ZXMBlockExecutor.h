//
//  CYLBlockExecutor.h
//  CopyDemo
//
//  Created by zhongxm on 15/12/29.
//  Copyright © 2015年 zhongxm. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^voidBlock)(void);

@interface ZXMBlockExecutor : NSObject

- (instancetype)initWithBlock:(voidBlock)block;
@end
