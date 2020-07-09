//
//  AppDelegate.m
//  CTMediatorDemo
//
//  Created by Destiny on 2020/7/8.
//  Copyright © 2020 Destiny. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor=[UIColor whiteColor];

    UIViewController *vc1 = [[CTMediator sharedInstance]mediator_ModuleAPage1ViewController:@{}];
    vc1.title = @"ModuleAPage1";
    UINavigationController *navi1 = [[UINavigationController alloc]initWithRootViewController:vc1];
    navi1.tabBarItem.title=@"ModuleA";

    UIViewController *vc2 = [[CTMediator sharedInstance]mediator_ModuleBPage1ViewController];
    vc2.title = @"ModuleBPage1";
    UINavigationController *navi2 = [[UINavigationController alloc]initWithRootViewController:vc2];
    navi2.tabBarItem.title=@"ModuleB";
    
    UIViewController *vc3 = [[CTMediator sharedInstance]mediator_ModuleCPage1ViewController];
    vc3.title = @"ModuleCPage1";
    UINavigationController *navi3 = [[UINavigationController alloc]initWithRootViewController:vc3];
    navi3.tabBarItem.title=@"ModuleC";

    UITabBarController *tabBarVC = [[UITabBarController alloc]init];
    [tabBarVC addChildViewController:navi1];
    [tabBarVC addChildViewController:navi2];
    [tabBarVC addChildViewController:navi3];

    [self.window setRootViewController:tabBarVC];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
