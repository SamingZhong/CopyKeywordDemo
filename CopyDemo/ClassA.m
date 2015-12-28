//
//  ClassA.m
//  CopyDemo
//
//  Created by zhongxm on 15/12/28.
//  Copyright © 2015年 zhongxm. All rights reserved.
//

#import "ClassA.h"

@interface ClassA ()
@property (nonatomic, strong) NSString *sStr;
@property (nonatomic, copy) NSString *cStr;


@end

@implementation ClassA

-(void)test1{
    NSMutableString *mStr = [NSMutableString stringWithString:@"test1"];
    self.sStr = mStr;
    self.cStr = mStr;
    
    NSLog(@"Str:%@, mStr:%p, &mStr:%p", mStr, mStr, &mStr);
    NSLog(@"Str:%@,_sStr:%p, &_sStr:%p", _sStr,_sStr, &_sStr);
    NSLog(@"Str:%@,_cStr:%p, &_cStr:%p", _cStr,_cStr, &_cStr);
    
    
    [mStr appendString:@"=========="];
    NSLog(@"修改mStr对象数据后！");
    NSLog(@"Str:%@,mStr:%p, &mStr:%p", mStr, mStr, &mStr);
    NSLog(@"Str:%@,_sStr:%p, &_sStr:%p", _sStr,_sStr, &_sStr);
    NSLog(@"Str:%@,_cStr:%p, &_cStr:%p", _cStr, _cStr, &_cStr);
    NSLog(@"============end=================");

}

-(void)test2{
    NSMutableString *mStr = [NSMutableString stringWithString:@"test2"];
    _sStr = mStr;
    _cStr = mStr;
    
    NSLog(@"Str:%@, mStr:%p, &mStr:%p", mStr, mStr, &mStr);
    NSLog(@"Str:%@,_sStr:%p, &_sStr:%p", _sStr,_sStr, &_sStr);
    NSLog(@"Str:%@,_cStr:%p, &_cStr:%p", _cStr,_cStr, &_cStr);
    
    
    [mStr appendString:@"=========="];
    NSLog(@"修改mStr对象数据后！");
    NSLog(@"Str:%@,mStr:%p, &mStr:%p", mStr, mStr, &mStr);
    NSLog(@"Str:%@,_sStr:%p, &_sStr:%p", _sStr,_sStr, &_sStr);
    NSLog(@"Str:%@,_cStr:%p, &_cStr:%p", _cStr, _cStr, &_cStr);
    NSLog(@"============end=================");

}
@end
