//
//  TransValueViewController.m
//  IOSDemo
//
//  Created by Paul on 15/12/17.
//  Copyright (c) 2015年 Paul. All rights reserved.
//

#import "TransValueViewController.h"

@interface TransValueViewController ()

@end

@implementation TransValueViewController
@synthesize transValue = _transValue;
@synthesize delegate = _delegate;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title=@"传值";
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(10, 80, 100, 30)];
    [label setText:@"传过来的值:"];
    [self.view addSubview:label];
    UILabel *label2 = [[UILabel alloc]initWithFrame:CGRectMake(120, 80, 60, 30)];
    [label2 setText:_transValue];
    [self.view addSubview:label2];
    
    //回传值
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(10, 120, 280, 30);
    [button setTitle:@"点我回传值，值为100" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(sendBackValue) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
-(void)sendBackValue
{
    NSLog(@"回传");
    if ([_delegate respondsToSelector:@selector(sendBackValue:)]) {
        [_delegate sendBackValue:@"100"];
        NSLog(@"100");
    }
    [self.navigationController popViewControllerAnimated:YES];
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
