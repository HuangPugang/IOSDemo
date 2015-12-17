//
//  MyTableViewController.m
//  IOSDemo
//
//  Created by Paul on 15/12/17.
//  Copyright (c) 2015年 Paul. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController
@synthesize dataList;
@synthesize myTableView ;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];
    myTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];//设置列表样式为简单的样式 还有一个样式为UITableViewStyleGrouped为分组模式   UITableViewStylePlain为普通的样式
    self.myTableView.delegate = self;//设置代理为自身
    myTableView.dataSource = self;//设置数据源为自身
    self.myTableView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;//确保TablView能够正确的调整大小
    [self.view addSubview:myTableView];
    
}
//设置每行的高度
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat result = 20.0f;
    if ([tableView isEqual:self.myTableView]) {
        //        result = 40.0f;
        result = 80.0f;
    }
    return result;
}
//允许数据源告知必须加载到Table View中的表的Section数。
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    NSInteger result = 0;
    if([tableView isEqual:myTableView]){
        result = 3;//一共三个section
    }
    return 10;
}
//设置每个Section呈现多少行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSInteger result = 0;
    if ([tableView isEqual:myTableView]) {
        switch (section) {
                //如果为第一个section则显示三行数据
            case 0:
                result=3;
                break;
            case 1:
                result = 5;
                break;
            case 2:
                result = 8;
                break;
        }
    }
    return 1;
}
//每行像是的数据
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *result = nil;
    if ([tableView isEqual:myTableView]) {
        static NSString *tableViewCellIdentifier = @"MyCells";//设置Cell标识
        result = [tableView dequeueReusableCellWithIdentifier:tableViewCellIdentifier];//通过标示符返回一个可重用的表视图单元格对象
        if (result == nil) {
            result = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableViewCellIdentifier];//初始化一个表格单元格样式和重用的标识符,并将它返回给调用者。
        }
        //indexPath.section 表示section的索引 indexPath.row表示行数的索引
        result.textLabel.text = [NSString stringWithFormat:@"Section %ld,Cell %ld",(long)indexPath.section,(long)indexPath.row];
    }
    return result;
}
//点击某一行时候触发的事件
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if ([tableView isEqual:myTableView]) {
        NSLog(@"%@",[NSString stringWithFormat:@"Cell %ld in Section %ld is selected",(long)indexPath.row,(long)indexPath.section]);
    }
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
