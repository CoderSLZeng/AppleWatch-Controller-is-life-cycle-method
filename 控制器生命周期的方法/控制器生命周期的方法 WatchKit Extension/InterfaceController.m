//
//  InterfaceController.m
//  控制器生命周期的方法 WatchKit Extension
//
//  Created by Anthony on 16/8/18.
//  Copyright © 2016年 SLZeng. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

/**
 *  初始化当前控制器，子控制器不一定有值
 *
 *  @return 控制器
 */
- (instancetype)init {
    if (self = [super init]) {
        NSLog(@"初始化当前控制器，子控制器不一定有值 %s %d", __func__, __LINE__);
    }
    return self;
}

/**
 *  创建界面完毕，可以在这个对子控制器赋值
 *
 *  @param context 界面里的内容
 */
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
    NSLog(@"创建界面完毕，可以在这个对子控制器赋值 %s %d", __func__, __LINE__);
}

/**
 *   即将进入程序，对界面做微调，具体的初始化应该放在 init 或者 awakeWithContext
 */
- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    NSLog(@"即将进入程序，对界面做微调，具体的初始化应该放在 init 或者 awakeWithContext %s %d", __func__, __LINE__);
}

/**
 *  清空界面，一般是用来停止动画：timer
 */
- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
    NSLog(@"清空界面，一般是用来停止动画：timer %s %d", __func__, __LINE__);
}

@end



