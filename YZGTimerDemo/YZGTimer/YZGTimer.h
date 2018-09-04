//
//  YZGTimer.h
//  HLLYunDianPro
//
//  Created by yzg on 2018/9/4.
//  Copyright © 2018年 yzg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YZGTimer : NSObject

// 是否在异步队列、是否重复执行一个start秒之后，间隔为interval秒的task任务
+ (NSString *)doTask:(void(^)(void))task start:(NSTimeInterval)start interval:(NSTimeInterval)interval repeats:(BOOL)repeats async:(BOOL)async;

// 根据timer的唯一标示，取消对应的timer。
+ (void)cancelTask:(NSString *)timerIdentifier;
@end
