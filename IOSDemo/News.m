//
//  News.m
//  IOSDemo
//
//  Created by Paul on 15/12/20.
//  Copyright © 2015年 Paul. All rights reserved.
//

#import "News.h"

@implementation News

-(id)initWithDict:(NSDictionary *)dict
{
    if (self==[super init]) {
        self.title = dict[@"title"];
        self.icon = dict[@"icon"];
        self.author = dict[@"author"];
        self.comments = [dict[@"comments"] intValue];
    }
    return self;
}

+(id)newsWithDict:(NSDictionary *)dict
{
    return [[self alloc]initWithDict:dict];
}
@end
