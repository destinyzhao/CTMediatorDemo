//
//  CTMediator+ModuleC.m
//  CTMediatorDemo
//
//  Created by Destiny on 2020/7/8.
//  Copyright © 2020 Destiny. All rights reserved.
//

#import "CTMediator+ModuleC.h"

//  字符串 是类名 Target_xxx.h 中的 xxx 部分
NSString * const kCTMediatorTarget_ModuleC = @"ModuleC";
//  字符串是 Target_xxx.h 中 定义的 Action_xxxx 函数名的 xxx 部分
NSString * const kCTMediatorActionNativTo_ModuleCPage1ViewController = @"ModuleCPage1ViewController";
NSString * const kCTMediatorActionNativTo_ModuleCPage2ViewController = @"ModuleCPage2ViewController";

@implementation CTMediator (ModuleC)

- (BaseViewController *)mediator_ModuleCPage1ViewController{
   BaseViewController *viewController = [self performTarget:kCTMediatorTarget_ModuleC
                                                   action:kCTMediatorActionNativTo_ModuleCPage1ViewController
                                                   params:nil shouldCacheTarget:NO];
   if ([viewController isKindOfClass:[UIViewController class]]) {
       // view controller 交付出去之后，可以由外界选择是push还是present
       return viewController;
   } else {
       // 这里处理异常场景，具体如何处理取决于产品
       NSLog(@"%@ 未能实例化页面", NSStringFromSelector(_cmd));
       return [[BaseViewController alloc] init];
   }
}

- (BaseViewController *)mediator_ModuleCPage2ViewController{
   BaseViewController *viewController = [self performTarget:kCTMediatorTarget_ModuleC
                                                     action:kCTMediatorActionNativTo_ModuleCPage2ViewController
                                                     params:nil shouldCacheTarget:NO];
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
