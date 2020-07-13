//
//  ModuleAPage2ViewController.m
//  CTMediatorDemo
//
//  Created by Destiny on 2020/7/8.
//  Copyright © 2020 Destiny. All rights reserved.
//

#import "ModuleAPage2ViewController.h"

@interface ModuleAPage2ViewController ()

@property (copy, nonatomic)  id<RACSubscriber> subscriber;

@end

@implementation ModuleAPage2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"ModuleAPage2";
    NSLog(@"params:%@",self.parameter);
    
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    //发送信号
    [[Signal sharedSignal].subject sendNext:@"ModuleAPage2ViewWillDisappear"];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
