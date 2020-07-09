//
//  Target_ModuleB.m
//  CTMediatorDemo
//
//  Created by Destiny on 2020/7/8.
//  Copyright © 2020 Destiny. All rights reserved.
//

#import "Target_ModuleB.h"
#import "ModuleBPage1ViewController.h"
#import "ModuleBPage2ViewController.h"

@implementation Target_ModuleB

- (BaseViewController *)Action_ModuleBPage1ViewController:(NSDictionary *)params{
    ModuleBPage1ViewController *vc = [[ModuleBPage1ViewController alloc]init];
    vc.parameter = params;
    return vc;
}

- (BaseViewController *)Action_ModuleBPage2ViewController:(NSDictionary *)params{
    ModuleBPage2ViewController *vc = [[ModuleBPage2ViewController alloc]init];
    vc.parameter = params;
    return vc;
}


@end
