//
//  MyTableViewController.m
//  IOSDemo
//
//  Created by Paul on 15/12/20.
//  Copyright © 2015年 Paul. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()
{
    NSMutableArray *newsArray;
}
@end

@implementation MyTableViewController
@synthesize myTableView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    //self.view.bounds
    myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];//设置列表样式为简单的样式 还有一个样式为UITableViewStyleGrouped为分组模式   UITableViewStylePlain为普通的样式
    self.myTableView.delegate = self;//设置代理为自身
    myTableView.dataSource = self;//设置数据源为自身
    self.myTableView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;//确保TablView能够正确的调整大小
    
    //加载plist
    NSArray *array = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"news.plist" ofType:nil]];
    //字典转模型
    newsArray = [NSMutableArray array];
    for (NSDictionary *dict in array) {
        [newsArray addObject:[News newsWithDict:dict]];
    }
    [self.view addSubview:myTableView];

}

//设置每行的高度
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat result = 20.0f;
    if ([tableView isEqual:self.myTableView]) {
        //        result = 40.0f;
        result = 80.0f;
    }
    return 120.0f;
}

//允许数据源告知必须加载到Table View中的表的Section数。
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    NSInteger result = 0;
    if([tableView isEqual:myTableView]){
        result = 3;//一共三个section
    }
    return 1;
}

//设置每个Section呈现多少行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return newsArray.count;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//每行像是的数据
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    
    static NSString *identifier = @"cell";
    
    NewsCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[NewsCell alloc]initWithStyle:UITableViewCellStyleDefault   reuseIdentifier:identifier];
    }
    cell.news = newsArray[indexPath.row];
    NSLog(@"%ld",indexPath.row);
    
    //    [cell setLabel1Text:@"222222222" label2Text:@"333333333"];
    
    return cell;
    
}

//点击某一行时候触发的事件
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if ([tableView isEqual:myTableView]) {
        NSLog(@"%@",[NSString stringWithFormat:@"Cell %ld in Section %ld is selected",(long)indexPath.row,(long)indexPath.section]);
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
