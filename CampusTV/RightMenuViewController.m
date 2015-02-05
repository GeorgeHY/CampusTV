//
//  RightMenuViewController.m
//  CampusTV
//
//  Created by iwind on 15/2/4.
//  Copyright (c) 2015年 TV. All rights reserved.
//

#import "RightMenuViewController.h"
#import "GlobalKeys.h"
#import "RightMenuCell.h"
@interface RightMenuViewController () <UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView * tableview;
@property (nonatomic, strong) UIView * topView;
@property (nonatomic, strong) NSArray * menuArr;

@end

@implementation RightMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.topView = [[UIView alloc]initWithFrame:CGRectMake(0, 0,kMainScreenBounds.size.width , kMainScreenBounds.size.height * 0.2)];
    [self.view addSubview: self.topView];
    self.topView.backgroundColor = [UIColor redColor];
    
    self.tableview = [[UITableView alloc]initWithFrame:CGRectMake(0, self.topView.frame.size.height, kMainScreenBounds.size.width, kMainScreenBounds.size.height)];
    self.tableview.dataSource = self;
    self.tableview.delegate  = self;
    [self.view addSubview: self.tableview];
    [self.tableview registerClass:[RightMenuCell class] forCellReuseIdentifier:@"cell"];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.menuArr = [[NSArray alloc]initWithObjects:@"我的资料",@"安全中心",@"我的收藏",@"我要充值",@"我的积分",@"设置", nil];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.menuArr.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    RightMenuCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = self.menuArr[indexPath.row];
    cell.textLabel.textAlignment = NSTextAlignmentRight;
    return cell;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
