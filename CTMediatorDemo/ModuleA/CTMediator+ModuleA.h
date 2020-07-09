//
//  CTMediator+ModuleA.h
//  CTMediatorDemo
//
//  Created by Destiny on 2020/7/8.
//  Copyright © 2020 Destiny. All rights reserved.
//

#import "CTMediator.h"


NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (ModuleA)

- (BaseViewController *)mediator_ModuleAPage1ViewController:(NSDictionary *)params;

- (BaseViewController *)mediator_ModuleAPage2ViewController:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
