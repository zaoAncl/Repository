//
//  ZMTool.m
//  ARC模式下实现单例
//
//  Created by zhangming on 2017/5/17.
//  Copyright © 2017年 zhangming. All rights reserved.
//

#import "ZMTool.h"

@implementation ZMTool
//0.提供全局变量
static ZMTool *_instance;

//1.alloc-->allocWithZone
+(instancetype)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}
//2.提供类方法
+(instancetype)shareTool{
    
    return [[self alloc] init];
}
//3.严谨
-(id)copyWithZone:(NSZone *)zone{
    return _instance;
}
- (id)mutableCopyWithZone:(NSZone *)zone{
    return _instance;
}
@end
