//
//  Signal.h
//  CTMediatorDemo
//
//  Created by Destiny on 2020/7/9.
//  Copyright © 2020 Destiny. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Signal : NSObject

@property (strong, nonatomic) RACSignal *signal;
@property (strong, nonatomic) RACSubject *subject;

+ (instancetype)sharedSignal;

@end

NS_ASSUME_NONNULL_END
