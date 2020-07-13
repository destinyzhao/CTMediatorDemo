//
//  ModuleAPage1ViewController.m
//  CTMediatorDemo
//
//  Created by Destiny on 2020/7/8.
//  Copyright © 2020 Destiny. All rights reserved.
//

#import "ModuleAPage1ViewController.h"
#import "ModuleAPage2ViewController.h"

@interface ModuleAPage1ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(strong, nonatomic) UITableView *tableView;
@property(strong, nonatomic) NSArray *dataArray;

@end

@implementation ModuleAPage1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupTableView];
    self.dataArray = @[@"ModuleAPage2",@"ModuleBPage1",@"ModuleCPage1"];
    [self.tableView reloadData];
    
    //订阅信号
    [[Signal sharedSignal].subject subscribeNext:^(id x) {
           NSLog(@"订阅者一%@",x);
    }];
}

- (void)setupTableView{
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIndetifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIndetifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIndetifier];
    }
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44.f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:
            [self pushModuleAPage2];
            break;
        case 1:
            [self pushModuleBPage1];
            break;
        case 2:
            [self presentModuleCPage1];
            break;
            
        default:
            break;
    }
    
}

- (void)pushModuleAPage2
{
    NSMutableDictionary *param = [NSMutableDictionary dictionary];
    [param setValue:@"ModuleAPage1" forKey:@"page"];
    UIViewController *viewController = [[CTMediator sharedInstance] mediator_ModuleAPage2ViewController:param completion:^(NSDictionary * _Nonnull dic) {
        NSLog(@"%@",dic);

    }];
     [viewController setHidesBottomBarWhenPushed:YES];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)pushModuleBPage1
{
     UIViewController *viewController = [[CTMediator sharedInstance] mediator_ModuleBPage1ViewController];
     [viewController setHidesBottomBarWhenPushed:YES];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)presentModuleCPage1
{
     UIViewController *viewController = [[CTMediator sharedInstance] mediator_ModuleCPage1ViewController];
    [self.navigationController presentViewController:viewController animated:NO completion:nil];
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
