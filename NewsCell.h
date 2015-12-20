//
//  NewsCell.h
//  IOSDemo
//
//  Created by Paul on 15/12/20.
//  Copyright © 2015年 Paul. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "News.h"
@interface NewsCell : UITableViewCell
{
    UILabel *_label1;
    UILabel *_label2;
    UIImageView *_imageView;
}
@property(nonatomic,strong)News *news;

- (void)setLabel1Text:(NSString *)text1
           label2Text:(NSString *)text2
                image:(UIImage*)image;

@end
