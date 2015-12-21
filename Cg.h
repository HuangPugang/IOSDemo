//
//  Cg.h
//  IOSDemo
//
//  Created by Paul on 15/12/21.
//  Copyright © 2015年 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cg : NSObject
@property (nonatomic, copy) NSString *title; // 标题
@property (nonatomic, copy) NSString *description; // 作者

-(id)initWithDict:(NSDictionary*)dict;
+(id)newsWithDict:(NSDictionary*)dict;
@end
