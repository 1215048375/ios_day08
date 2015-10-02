//
//  LZMessageCell.m
//  day08-QQ-01
//
//  Created by leon on 15/10/2.
//  Copyright © 2015年 leon. All rights reserved.
//

#import "LZMessageCell.h"
#import "LZMessageFrameModel.h"
#import "LZMessageModel.h"

@interface LZMessageCell()

//时间
@property(nonatomic, weak)UILabel *time;
//正文
@property(nonatomic, weak)UIButton *textView;
//头像
@property(nonatomic, weak)UIImageView *icon;

@end

@implementation LZMessageCell

- (void)setFrameMessage:(LZMessageFrameModel*)frameMessage
{
    _frameMessage = frameMessage;
    
    
    LZMessageModel *model = frameMessage.message;

    self.time.frame = frameMessage.timeF;
    self.time.text = model.time;
    
    self.icon.frame = frameMessage.iconF;
    if (model.type == SENDER) {
        self.icon.image = [UIImage imageNamed:@"Jobs"];
    } else {
        self.icon.image = [UIImage imageNamed:@"Gatsby"];
    }
    
    self.textView.frame = frameMessage.textViewF;
    self.textView.backgroundColor = [UIColor blueColor];
    [self.textView setTitle:model.text forState:UIControlStateNormal];
}

+(instancetype) messageCellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"messageCell";
    LZMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[self alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    return cell;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        UILabel *time  = [[UILabel alloc] init];
        time.textAlignment = NSTextAlignmentCenter;
        time.font = [UIFont systemFontOfSize:13.0f];
        [self.contentView addSubview:time];
        self.time = time;
        
        UIButton *textView = [[UIButton alloc]init];
        textView.font = [UIFont systemFontOfSize:14.0f];
        textView.titleLabel.numberOfLines = 0;
        [self.contentView addSubview:textView];
        self.textView = textView;
        
        UIImageView *icon = [[UIImageView alloc]init];
        [self.contentView addSubview:icon];
        self.icon = icon;
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
