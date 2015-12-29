//
//  ClassA.h
//  CopyDemo
//
//  Created by zhongxm on 15/12/28.
//  Copyright © 2015年 zhongxm. All rights reserved.
//
/**
 *  说明:对于strong和copy关键字的使用，其中copy是对对象的深拷贝，把新的immutable对象地址赋值给
 *  copy对应的属性变量。其实应当引起注意的是，这个copy的动作，其实是在setter里编译器做的。
 *  所以必须得使用self.propertyA = xxxx;才能达到想要的效果。
 *  这个应该就是这些关键字起的作用，在编译时期做代码的安插处理。当然，如果直接操作实例变量也可，那么
 *  做法就应该是_propertyA = [xxxx copy];因为直接操作实例变量，编译器也帮不了什么了。
 */

#import <Foundation/Foundation.h>

@interface ClassA : NSObject
/**
 *  strong、copy关键字 使用设置属性测试
 */
- (void)test1;
/**
 *   strong、copy关键字 直接使用实例变量测试
 */
- (void)test2;

- (void)crashTest;

- (void)helloworld;

@end
