//
//  Nav2ViewController.m
//  IOSDemo
//
//  Created by Paul on 15/12/17.
//  Copyright (c) 2015年 Paul. All rights reserved.
//

#import "Nav2ViewController.h"

@interface Nav2ViewController ()

@end

@implementation Nav2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    //实例化一个按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(10, 100, 300, 100);
    [button setTitle:@"跳转到跟视图控制器" forState:UIControlStateNormal];
    //设置点击事件
    [button addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    //把按钮添加到界面上
    [self.view addSubview:button];
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    //    self.navigationController.navigationBarHidden = YES;
    //设置标题
    [self.navigationItem setTitle:@"这是标题"];
    
    //设置view
    //    UIView *titleView = [[UIView alloc]initWithFrame:CGRectMake(100, 50, 100, 40)];
    //    [titleView setBackgroundColor:[UIColor yellowColor]];
    //    [self.navigationItem setTitleView:titleView];
    
    //左侧定义的按钮
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(itemClick:)];
    
    //设置导航控制器style
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    self.navigationItem.leftBarButtonItem = item1;
    //右侧定义的按钮
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc]initWithTitle:@"item2" style:UIBarButtonItemStylePlain target:self action:nil];
    UIBarButtonItem *item3 = [[UIBarButtonItem alloc]initWithTitle:@"item3" style:UIBarButtonItemStylePlain target:self action:nil];
    UIBarButtonItem *item4 = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"close"] style:UIBarButtonItemStylePlain target:self action:nil];
    NSArray *itemArray = [NSArray arrayWithObjects:item2,item3,item4, nil];
    self.navigationItem.rightBarButtonItems = itemArray;
    
    //toolbar 使用
        self.navigationController.toolbarHidden = NO;
    //定义toolbar背景
        [self.navigationController.toolbar setBackgroundImage:[UIImage imageNamed:@"toolbg"] forToolbarPosition:UIBarPositionBottom barMetrics:UIBarMetricsDefault];
    //通过toolbaritems来定制工具栏的显示
        self.toolbarItems = itemArray;
}



-(void)itemClick:(UIBarButtonItem *)item
{
    NSLog(@"点击navItem");
    [self.navigationController popViewControllerAnimated:YES];
}
//创建方法
-(void)btnClick
{
    //    [self dismissViewControllerAnimated:YES completion:^{
    //        NSLog(@"guanbi");
    //    }];
    //    如果使用导航控制器就执行以下操作退出
    [self.navigationController popToRootViewControllerAnimated:YES];
    NSLog(@"关闭");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
   
    
}
-(void)loadView
{
    [super loadView];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear");
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
    self.navigationController.toolbarHidden = YES;
}
-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    NSLog(@"viewDidDisappear");
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
