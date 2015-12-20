//
//  NewsCell.m
//  IOSDemo
//
//  Created by Paul on 15/12/20.
//  Copyright © 2015年 Paul. All rights reserved.
//

#import "NewsCell.h"

@implementation NewsCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        NSLog(@"%lf",self.frame.size.height);
        
        _label1 = [[UILabel alloc] initWithFrame:CGRectMake(160, 20, 180, self.frame.size.height)];
        
        [self.contentView addSubview:_label1];
        
        _label2 = [[UILabel alloc] initWithFrame:CGRectMake(160, 60, 180, self.frame.size.height)];
        
        [self.contentView addSubview:_label2];
        
        _imageView =[[UIImageView alloc]initWithFrame:CGRectMake(20, 20, 120, 80)];
        [self.contentView addSubview:_imageView];
        
    }
    return self;
}
-(void)setNews:(News *)news
{
    _news = news;
    _label1.text = news.author;
    _label2.text = news.title;
    _imageView.image = [UIImage imageNamed:news.icon];
}

- (void)setLabel1Text:(NSString *)text1
           label2Text:(NSString *)text2
            image:(UIImage *)image
{
    _label1.text = text1;
    _label2.text = text2;
}

@end
