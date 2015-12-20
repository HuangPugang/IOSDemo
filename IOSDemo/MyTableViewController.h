//
//  MyTableViewController.h
//  IOSDemo
//
//  Created by Paul on 15/12/20.
//  Copyright © 2015年 Paul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "News.h"
#import "NewsCell.h"
@interface MyTableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>//添加代理
@property(nonatomic,strong)UITableView *myTableView;
@end
