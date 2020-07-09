//
//  BaseViewController.h
//  CTMediatorDemo
//
//  Created by Destiny on 2020/7/8.
//  Copyright © 2020 Destiny. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^BaseViewControllerBlock)(NSDictionary *dict);

NS_ASSUME_NONNULL_BEGIN

@interface BaseViewController : UIViewController

@property (nonatomic, copy) BaseViewControllerBlock callBackBlock;
@property (nonatomic, strong) NSDictionary *parameter;

@end

NS_ASSUME_NONNULL_END
