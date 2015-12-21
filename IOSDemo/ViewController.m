//
//  ViewController.m
//  IOSDemo
//
//  Created by Paul on 15/12/17.
//  Copyright (c) 2015年 Paul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(10, 80, 300, 40);
    [button setTitle:@"UIViewDemo" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    self.navigationItem.title = @"PaulDemo";
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame = CGRectMake(10, 130, 300, 40);
    [button1 setTitle:@"NavController+NavBar+ToolBar" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(btnClick1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(10, 180, 300, 40);
    [button2 setTitle:@"传值" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(btnClick2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button3.frame = CGRectMake(10, 230, 300, 40);
    [button3 setTitle:@"ScrollView" forState:UIControlStateNormal];
    [button3 addTarget:self action:@selector(btnClick3) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
    
    UIButton *button4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button4.frame = CGRectMake(10, 280, 300, 40);
    [button4 setTitle:@"列表" forState:UIControlStateNormal];
    [button4 addTarget:self action:@selector(btnClick4) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button4];
    
    UIButton *button5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button5.frame = CGRectMake(10, 330, 300, 40);
    [button5 setTitle:@"数据库" forState:UIControlStateNormal];
    [button5 addTarget:self action:@selector(btnClick5) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button5];
    
    UIButton *button6 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button6.frame = CGRectMake(10, 380, 300, 40);
    [button6 setTitle:@"网络" forState:UIControlStateNormal];
    [button6 addTarget:self action:@selector(btnClick6) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button6];

}


-(void)btnClick
{
    UIViewDemoController *dc = [[UIViewDemoController alloc]init];
    [self.navigationController pushViewController:dc animated:YES];
}
-(void)btnClick1
{
    NavViewController *dc = [[NavViewController alloc]init];
    [self.navigationController pushViewController:dc animated:YES];
}
-(void)btnClick2
{
    TransValueViewController *dc = [[TransValueViewController alloc]init];
    dc.transValue = @"6";
    dc.delegate = self;
    [self.navigationController pushViewController:dc animated:YES];
}
-(void)btnClick3
{
    ScrollerViewController *dc = [[ScrollerViewController alloc]init];
    [self.navigationController pushViewController:dc animated:YES];
}
-(void)btnClick4
{
    MyTableViewController *dc = [[MyTableViewController alloc]init];
    [self.navigationController pushViewController:dc animated:YES];
}
-(void)btnClick5
{
    DBViewController *dc = [[DBViewController alloc]init];
    [self.navigationController pushViewController:dc animated:YES];
}
-(void)btnClick6
{
    NetworkViewController *dc = [[NetworkViewController alloc]init];
    [self.navigationController pushViewController:dc animated:YES];
}
//值回传
-(void)sendBackValue:(NSString *)backValue
{
    NSLog(@"%@",backValue);
    UIAlertView *alert =[[UIAlertView alloc]initWithTitle:@"回传的值为" message:backValue delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alert show];
}
//-(void)passValue:(NSString *)value{
//    NSLog(@"get backcall value=%@",value);
//}

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
}
-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    NSLog(@"viewDidDisappear");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
