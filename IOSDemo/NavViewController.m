//
//  NavViewController.m
//  IOSDemo
//
//  Created by Paul on 15/12/17.
//  Copyright (c) 2015年 Paul. All rights reserved.
//

#import "NavViewController.h"

@interface NavViewController ()

@end

@implementation NavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //设置背景颜色
    self.view.backgroundColor = [UIColor whiteColor];
    //实例化一个按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(10, 80, 300, 30);
    [button setTitle:@"关闭对话窗体" forState:UIControlStateNormal];
    //设置点击事件
    [button addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    //把按钮添加到界面上
    
    [self.view addSubview:button];
    
    //实例化一个按钮
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(10, 110, 300, 30);
    [button2 setTitle:@"跳转到下一个" forState:UIControlStateNormal];
    //设置点击事件
    [button2 addTarget:self action:@selector(btnClick2) forControlEvents:UIControlEventTouchUpInside];
    //把按钮添加到界面上
    [self.view addSubview:button2];

}

//创建方法
-(void)btnClick
{
    //    [self dismissViewControllerAnimated:YES completion:^{
    //        NSLog(@"guanbi");
    //    }];
    //    如果使用导航控制器就执行以下操作退出
    [self.navigationController popViewControllerAnimated:YES];
    NSLog(@"关闭");
}
-(void)btnClick2
{
    Nav2ViewController *svc = [[Nav2ViewController alloc]init];
    [self.navigationController pushViewController:svc animated:YES];
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
