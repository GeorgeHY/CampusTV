//
//  LeftMenuViewController.m
//  CampusTV
//
//  Created by iwind on 15/2/4.
//  Copyright (c) 2015年 TV. All rights reserved.
//

#import "LeftMenuViewController.h"
#import "GlobalKeys.h"
#import "LeftMenuCell.h"
@interface LeftMenuViewController () <UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView * tableView;
@property (nonatomic, strong) NSArray * menuArr;
@end

@implementation LeftMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, kMainScreenBounds.size.height * 0.1, kMainScreenBounds.size.width, kMainScreenBounds.size.height)];
    [self.view addSubview:self.tableView];
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.menuArr = [[NSArray alloc]initWithObjects:@"首页",@"校园TV",@"咨询",@"点击通话",@"VOIP",@"充值中心",@"当前活动",@"惠生活", nil];
    [self.tableView registerClass:[LeftMenuCell class] forCellReuseIdentifier:@"cell"];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.menuArr.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LeftMenuCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = self.menuArr[indexPath.row];
    cell.backgroundColor = [UIColor blueColor];
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
