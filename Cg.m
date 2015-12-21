//
//  Cg.m
//  IOSDemo
//
//  Created by Paul on 15/12/21.
//  Copyright © 2015年 Paul. All rights reserved.
//

#import "Cg.h"

@implementation Cg
-(id)initWithDict:(NSDictionary *)dict
{
    if (self==[super init]) {
        self.title = dict[@"title"];
        self.description = dict[@"description"];
    }
    return self;
}

+(id)newsWithDict:(NSDictionary *)dict
{
    return [[self alloc]initWithDict:dict];
}
@end
