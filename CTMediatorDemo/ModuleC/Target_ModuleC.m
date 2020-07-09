//
//  Target_ModuleC.m
//  CTMediatorDemo
//
//  Created by Destiny on 2020/7/8.
//  Copyright © 2020 Destiny. All rights reserved.
//

#import "Target_ModuleC.h"
#import "ModuleCPage1ViewController.h"
#import "ModuleCPage2ViewController.h"

@implementation Target_ModuleC

- (BaseViewController *)Action_ModuleCPage1ViewController:(NSDictionary *)params{
    ModuleCPage1ViewController *vc = [[ModuleCPage1ViewController alloc]init];
    vc.parameter = params;
    return vc;
}

- (BaseViewController *)Action_ModuleCPage2ViewController:(NSDictionary *)params{
    ModuleCPage2ViewController *vc = [[ModuleCPage2ViewController alloc]init];
    vc.parameter = params;
    return vc;
}


@end
