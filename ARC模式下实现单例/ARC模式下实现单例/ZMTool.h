//
//  ZMTool.h
//  ARC模式下实现单例
//
//  Created by zhangming on 2017/5/17.
//  Copyright © 2017年 zhangming. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZMTool : NSObject<NSCopying,NSMutableCopying>
//类方法
//1.方便访问
//2。标明身份
//3.注意：share+类名|default +类名|share|default|类名
+ (instancetype)shareTool;
@end
