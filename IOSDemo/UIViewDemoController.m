//
//  UIViewDemoController.m
//  IOSDemo
//
//  Created by Paul on 15/12/17.
//  Copyright (c) 2015年 Paul. All rights reserved.
//

#import "UIViewDemoController.h"

@interface UIViewDemoController ()

@end

@implementation UIViewDemoController
UISlider *mySlider;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    
    //输入框
    UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(20, 80, 280, 30)];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.placeholder = @"请输入文字";
    [self.view addSubview:textField];
    
    //按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(20, 110, 280, 30);
    [button setTitle:@"弹出对话框" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(alertView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    //标签
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 140, 280, 30)];
    label.textColor = [UIColor redColor];
    label.backgroundColor = [UIColor orangeColor];
    label.text = @"这是一个标签";
    [self.view addSubview:label];
    
    //图片
    UIImageView *image = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"close"]];
    [image setFrame:CGRectMake(20, 170, 30, 30)];
    [self.view addSubview:image];
    
    UITextView *myTextView = [[UITextView alloc]initWithFrame:
                  CGRectMake(10, 200, 300, 200)];
    [myTextView setText:@"Lorem ipsum dolor sit er elit lamet, consectetaurcillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore etdolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitationullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute iruredolor in reprehenderit in voluptate velit esse cillum dolore eu fugiatnulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt inculpa qui officia deserunt mollit anim id est laborum. Nam liber teconscient to factor tum poen legum odioque civiuda.Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicingpecu, sed do eiusmod tempor incididunt ut labore et dolore magna aiqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisialiquip ex ea commodo consequat. Duis aute irure dolor in reprehenderitin voluptate velit esse cillum dolore eu fugiat nulla pariatur.Excepteur sint occaecat cupidatat non proident, sunt in culpaqui officia deserunt mollit anim id est laborum. Nam liber te conscientto factor tum poen legum odioque civiuda."];
     myTextView.delegate = self;
     [self.view addSubview:myTextView];
    
    //switchbutton
    UISwitch *mySwitch = [[UISwitch alloc]init];
    mySwitch.center = CGPointMake(150, 430);
    [mySwitch addTarget:self action:@selector(switched:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:mySwitch];
    
    //滑块
    mySlider = [[UISlider alloc]initWithFrame:CGRectMake(10, 460, 300, 30)];
    mySlider.minimumValue = 0.0;
    mySlider.maximumValue = 100.0;
    mySlider.continuous = NO;
    [mySlider addTarget:self action:@selector(sliderChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:mySlider];
}
-(IBAction)sliderChanged:(id)sender{
    NSLog(@"SliderValue %f",mySlider.value);
}
-(void)switched:(id)sender
{
    NSLog(@"值改变了");
}

-(void)alertView
{
    
    UIAlertView *alert =[[UIAlertView alloc]initWithTitle:@"提示" message:@"警告框" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:@"按钮1",@"按钮2",@"按钮3", nil];
    [alert show];
    
    
}
-(void) addTextFieldWithDifferentKeyboard{
    
    UITextField *textField1= [[UITextField alloc]initWithFrame:
                              CGRectMake(20, 50, 280, 30)];
    textField1.delegate = self;
    textField1.borderStyle = UITextBorderStyleRoundedRect;
    textField1.placeholder = @"Default Keyboard";
    [self.view addSubview:textField1];
    
    UITextField *textField2 = [[UITextField alloc]initWithFrame:
                               CGRectMake(20, 100, 280, 30)];
    textField2.delegate = self;
    textField2.borderStyle = UITextBorderStyleRoundedRect;
    textField2.keyboardType = UIKeyboardTypeASCIICapable;
    textField2.placeholder = @"ASCII keyboard";
    [self.view addSubview:textField2];
    
    UITextField *textField3 = [[UITextField alloc]initWithFrame:
                               CGRectMake(20, 150, 280, 30)];
    textField3.delegate = self;
    textField3.borderStyle = UITextBorderStyleRoundedRect;
    textField3.keyboardType = UIKeyboardTypePhonePad;
    textField3.placeholder = @"Phone pad keyboard";
    [self.view addSubview:textField3];
    
    UITextField *textField4 = [[UITextField alloc]initWithFrame:
                               CGRectMake(20, 200, 280, 30)];
    textField4.delegate = self;
    textField4.borderStyle = UITextBorderStyleRoundedRect;
    textField4.keyboardType = UIKeyboardTypeDecimalPad;
    textField4.placeholder = @"Decimal pad keyboard";
    [self.view addSubview:textField4];
    
    UITextField *textField5= [[UITextField alloc]initWithFrame:
                              CGRectMake(20, 250, 280, 30)];
    textField5.delegate = self;
    textField5.borderStyle = UITextBorderStyleRoundedRect;
    textField5.keyboardType = UIKeyboardTypeEmailAddress;
    textField5.placeholder = @"Email keyboard";
    [self.view addSubview:textField5];
    
    UITextField *textField6= [[UITextField alloc]initWithFrame:
                              CGRectMake(20, 300, 280, 30)];
    textField6.delegate = self;
    textField6.borderStyle = UITextBorderStyleRoundedRect;
    textField6.keyboardType = UIKeyboardTypeURL;
    textField6.placeholder = @"URL keyboard";
    [self.view addSubview:textField6];
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
