//
//  Target_ModuleA.m
//  CTMediatorDemo
//
//  Created by Destiny on 2020/7/8.
//  Copyright © 2020 Destiny. All rights reserved.
//

#import "Target_ModuleA.h"
#import "ModuleAPage1ViewController.h"
#import "ModuleAPage2ViewController.h"

@implementation Target_ModuleA

- (BaseViewController *)Action_ModuleAPage1ViewController:(NSDictionary *)params{
    ModuleAPage1ViewController *vc = [[ModuleAPage1ViewController alloc]init];
    vc.parameter = params;
    return vc;
}

- (BaseViewController *)Action_ModuleAPage2ViewController:(NSDictionary *)params{
    ModuleAPage2ViewController *vc = [[ModuleAPage2ViewController alloc]init];
    vc.parameter = params;
    return vc;
}


@end
