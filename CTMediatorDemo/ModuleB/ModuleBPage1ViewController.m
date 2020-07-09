//
//  ModuleBPage1ViewController.m
//  CTMediatorDemo
//
//  Created by Destiny on 2020/7/8.
//  Copyright © 2020 Destiny. All rights reserved.
//

#import "ModuleBPage1ViewController.h"

@interface ModuleBPage1ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(strong, nonatomic) UITableView *tableView;
@property(strong, nonatomic) NSArray *dataArray;

@end

@implementation ModuleBPage1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupTableView];
    self.dataArray = @[@"ModuleBPage2",@"ModuleAPage2",@"ModuleCPage1"];
    [self.tableView reloadData];
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
            [self pushModuleBPage2];
            break;
        case 1:
            [self pushModuleAPage2];
            break;
        case 2:
            [self presentModuleCPage1];
            break;
            
        default:
            break;
    }
    
}

- (void)pushModuleBPage2
{
    UIViewController *viewController = [[CTMediator sharedInstance] mediator_ModuleBPage2ViewController];
     [viewController setHidesBottomBarWhenPushed:YES];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)pushModuleAPage2
{
    UIViewController *viewController = [[CTMediator sharedInstance] mediator_ModuleAPage2ViewController:@{@"page":@"MoudleBPage1"}];
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
