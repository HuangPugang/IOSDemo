//
//  NetworkViewController.m
//  IOSDemo
//
//  Created by Paul on 15/12/21.
//  Copyright (c) 2015年 Paul. All rights reserved.
//

#import "NetworkViewController.h"
#import "AFNetworking.h"
#import "JSONKit.h"
@interface NetworkViewController ()

@end

@implementation NetworkViewController
@synthesize receiveData=_receiveData;
@synthesize dataPackSerialNo=_dataPackSerialNo;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self networkRequest];
}


-(void)networkRequest{
    
//    //1.创建url
//    NSURL *url = [NSURL URLWithString:@"http://www.tngou.net/api/info/classify"];
//    
//    //2.创建请求对象
//    
//    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
//    
//    //3.创建链接对象,发送请求
//    
//    [NSURLConnection connectionWithRequest:request delegate:self];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:@"http://www.tngou.net/api/info/classify" parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
        //已经转为NSMutableDictionary了
//        NSData *jsonData = [responseObject dataUsingEncoding:NSUTF8StringEncoding];
//        NSMutableDictionary *resultDict = [str objectFromJSONString];
        NSLog(@"name is :%@",[responseObject objectForKey:@"tngou"]);
        NSArray *list = [responseObject objectForKey:@"tngou"];
        NSLog(@"%ld",[list count]);
//        NSString *resultStr = @"{\"name\": \"admin\",\"list\": [\"one\",\"two\",\"three\"]}";
//        NSData* jsonData = [resultStr dataUsingEncoding:NSUTF8StringEncoding];
//        NSDictionary *resultDict = [jsonData objectFromJSONData];
//        
//        NSLog(@"name is :%@",[resultDict objectForKey:@"name"]);
//        NSArray *list = [resultDict objectForKey:@"list"];
//        for (NSString *str in list) {
//            NSLog(@"list res:%@",str);  
//        }
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
}


//接收到服务器回应的时候调用此方法
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    NSHTTPURLResponse *res = (NSHTTPURLResponse *)response;
    NSLog(@"%@",[res allHeaderFields]);
    self.receiveData = [NSMutableData data];//数据存储对象的的初始化
    self.dataPackSerialNo=0;
    NSLog(@"收到服务器回应。。。");
}

//接收到服务器传输数据的时候调用，此方法根据数据大小执行若干次
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"收到服务器传回的数据包,数据包序号：%d",self.dataPackSerialNo);
    [self.receiveData appendData:data];
    self.dataPackSerialNo+=1;
}

//数据传完之后调用此方法
-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"数据传输完成，输出所有数据结果。。。");
    NSString *receiveStr = [[NSString alloc]initWithData:self.receiveData encoding:NSUTF8StringEncoding];
    NSLog(@"%@",receiveStr);
}

//网络请求过程中，出现任何错误（断网，连接超时等）会进入此方法
-(void)connection:(NSURLConnection *)connection
 didFailWithError:(NSError *)error
{
    NSLog(@"网络请求出错：%@",[error localizedDescription]);
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
