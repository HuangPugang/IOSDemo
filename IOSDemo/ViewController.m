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
