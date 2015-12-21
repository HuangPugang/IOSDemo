//
//  NetworkViewController.h
//  IOSDemo
//
//  Created by Paul on 15/12/21.
//  Copyright (c) 2015年 Paul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NetworkViewController : UIViewController<NSURLConnectionDataDelegate>

@property(nonatomic,retain) NSMutableData *receiveData;
@property(nonatomic,assign)int dataPackSerialNo;

@end
