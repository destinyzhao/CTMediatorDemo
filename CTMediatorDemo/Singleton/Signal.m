//
//  Signal.m
//  CTMediatorDemo
//
//  Created by Destiny on 2020/7/9.
//  Copyright © 2020 Destiny. All rights reserved.
//

#import "Signal.h"

@implementation Signal

+ (instancetype)sharedSignal {
    static Signal *_sharedSignal = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //不能再使用alloc方法
        //因为已经重写了allocWithZone方法，所以这里要调用父类的分配空间的方法
         _sharedSignal = [[[self class] alloc] init];
    });
    return _sharedSignal;
}

- (instancetype)init{
    self.subject = [RACSubject subject];
    return self;
}

@end
