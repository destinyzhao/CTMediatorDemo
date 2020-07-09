//
//  Target_ModuleA.h
//  CTMediatorDemo
//
//  Created by Destiny on 2020/7/8.
//  Copyright © 2020 Destiny. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_ModuleA : NSObject

- (BaseViewController *)Action_ModuleAPage1ViewController:(NSDictionary *)params;

- (BaseViewController *)Action_ModuleAPage2ViewController:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
