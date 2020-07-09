//
//  CTMediator+ModuleA.m
//  CTMediatorDemo
//
//  Created by Destiny on 2020/7/8.
//  Copyright © 2020 Destiny. All rights reserved.
//

#import "CTMediator+ModuleA.h"

//  字符串 是类名 Target_xxx.h 中的 xxx 部分
NSString * const kCTMediatorTarget_ModuleA = @"ModuleA";
//  字符串是 Target_xxx.h 中 定义的 Action_xxxx 函数名的 xxx 部分
NSString * const kCTMediatorActionNativTo_ModuleAPage1ViewController = @"ModuleAPage1ViewController";
NSString * const kCTMediatorActionNativTo_ModuleAPage2ViewController = @"ModuleAPage2ViewController";

@implementation CTMediator (ModuleA)

- (BaseViewController *)mediator_ModuleAPage1ViewController:(NSDictionary *)params{
   BaseViewController *viewController = [self performTarget:kCTMediatorTarget_ModuleA
                                                   action:kCTMediatorActionNativTo_ModuleAPage1ViewController
                                                   params:params shouldCacheTarget:NO];
   if ([viewController isKindOfClass:[UIViewController class]]) {
       // view controller 交付出去之后，可以由外界选择是push还是present
       return viewController;
   } else {
       // 这里处理异常场景，具体如何处理取决于产品
       NSLog(@"%@ 未能实例化页面", NSStringFromSelector(_cmd));
       return [[BaseViewController alloc] init];
   }
}

- (BaseViewController *)mediator_ModuleAPage2ViewController:(NSDictionary *)params{
   BaseViewController *viewController = [self performTarget:kCTMediatorTarget_ModuleA
                                                     action:kCTMediatorActionNativTo_ModuleAPage2ViewController
                                                     params:params shouldCacheTarget:NO];
     if ([viewController isKindOfClass:[UIViewController class]]) {
         // view controller 交付出去之后，可以由外界选择是push还是present
         return viewController;
     } else {
         // 这里处理异常场景，具体如何处理取决于产品
         NSLog(@"%@ 未能实例化页面", NSStringFromSelector(_cmd));
         return [[BaseViewController alloc] init];
     }
}

@end
