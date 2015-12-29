//
//  main.m
//  CopyDemo
//
//  Created by zhongxm on 15/12/28.
//  Copyright © 2015年 zhongxm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        ClassA *a = [ClassA new];
        [a test1];
        [a test2];
        
        [a crashTest];
    }
    return 33;
}
