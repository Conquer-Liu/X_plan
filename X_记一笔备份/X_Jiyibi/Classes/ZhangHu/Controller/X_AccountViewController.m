//
//  X_AccountViewController.m
//  X_Jiyibi
//
//  Created by Conquer on 16/6/13.
//  Copyright © 2016年 Saina. All rights reserved.
//

#import "X_AccountViewController.h"
#import "X_ZHTableViewController.h"
@interface X_AccountViewController ()<UITableViewDataSource,UITableViewDelegate>


//  tableView 的数据源
@property (nonatomic,strong)NSArray *listArr;

@end

@implementation X_AccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 初始化数据源
    _listArr = @[@"银行卡数量",@"本月预算总额",@"月固定支出",@"股票账户",@"余额"];
    
    // 初始化控件
    self.accountListTableView.delegate = self;
    self.accountListTableView.dataSource = self;
    
    // 清除多余分割线
    self.accountListTableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    
    // 注册cell
    [self.accountListTableView registerClass:[UITableViewCell  class] forCellReuseIdentifier:@"cell"];
    
    // 添加视图
    [self.view addSubview:self.accountListTableView];
    
    
}


#pragma mark UITableViewDelgate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.listArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell ==  nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = _listArr[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 加一个分支结构,来判断各个cell 的点击情况
    switch (indexPath.row) {
        case 0:
        { // 我的活动
            
        }
            break;
            
        case 1:
        { //我的电影
//            MyCinemaController *myCinemaVC =[ MyCinemaController new];
//            [self.navigationController pushViewController:myCinemaVC animated:YES];
        }
            break;
        case 2:
        {
        }
            break;
            
        default:
            break;
            
    }

    
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
