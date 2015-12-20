//
//  News.h
//  IOSDemo
//
//  Created by Paul on 15/12/20.
//  Copyright © 2015年 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface News : NSObject
@property (nonatomic, copy) NSString *title; // 标题
@property (nonatomic, copy) NSString *author; // 作者
@property (nonatomic, copy) NSString *icon; // 图片
@property (nonatomic, assign) int comments; // 评论数

-(id)initWithDict:(NSDictionary*)dict;
+(id)newsWithDict:(NSDictionary*)dict;
@end
