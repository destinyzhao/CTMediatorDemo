//
//  CTMediator+ModuleB.h
//  CTMediatorDemo
//
//  Created by Destiny on 2020/7/8.
//  Copyright © 2020 Destiny. All rights reserved.
//

#import "CTMediator.h"


NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (ModuleB)

- (BaseViewController *)mediator_ModuleBPage1ViewController;

- (BaseViewController *)mediator_ModuleBPage2ViewController;

@end

NS_ASSUME_NONNULL_END
