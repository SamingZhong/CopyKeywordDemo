//
//  main.m
//  weakStore
//
//  Created by zhongxm on 15/12/29.
//  Copyright © 2015年 zhongxm. All rights reserved.
//
//  实现property的weak属性?

#import <Foundation/Foundation.h>
#import "ClassZ.h"

#import "NSObject+ZXM_RunAtDealloc.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        ClassZ *a = [ClassZ new];
        NSLog(@"a:%@", a);
        
        
        /*NSObject *object = [NSObject new];
        [object runAtDealloc:^{
            NSLog(@"object销毁通知!");
        }];*/
        
        }
    return 0;
}
