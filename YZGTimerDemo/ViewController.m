//
//  ViewController.m
//  YZGTimerDemo
//
//  Created by yzg on 2018/9/4.
//  Copyright © 2018年 yzg. All rights reserved.
//

#import "ViewController.h"
#import "YZGTimer.h"

@interface ViewController ()
@property (nonatomic, copy) NSString *timerID;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 开始定时任务
    [self timerStart];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    // 取消定时任务
    [self timerCancel];
}

- (void)timerStart {
    self.timerID = [YZGTimer doTask:^{
        NSLog(@"test -- %@", [NSThread currentThread]);
    } start:1.f interval:2.f repeats:YES async:NO];
}

- (void)timerCancel {
    [YZGTimer cancelTask:self.timerID];
}

@end
