//
//  TransValueViewController.h
//  IOSDemo
//
//  Created by Paul on 15/12/17.
//  Copyright (c) 2015年 Paul. All rights reserved.
//

#import <UIKit/UIKit.h>

//申明一个传值协议
@protocol SendValue <NSObject>

-(void)sendBackValue:(NSString*)backValue;

@end
@interface TransValueViewController : UIViewController
//传值属性
@property(nonatomic,copy)NSString* transValue;
//回传代理
@property(nonatomic,assign)NSObject<SendValue> *delegate;

@end
