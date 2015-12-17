//
//  MyTableViewController.h
//  IOSDemo
//
//  Created by Paul on 15/12/17.
//  Copyright (c) 2015年 Paul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>//1.添加代理
@property(nonatomic,strong) UITableView *myTableView;
@property (nonatomic, retain) NSArray *dataList;
@end
