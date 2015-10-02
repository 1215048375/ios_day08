//
//  LZMessageFrameModle.m
//  day08-QQ-01
//
//  Created by leon on 15/10/2.
//  Copyright © 2015年 leon. All rights reserved.
//

#import "LZMessageFrameModel.h"
#import "Constants.h"
#import "LZMessageModel.h"

@implementation LZMessageFrameModel

-(void)setMessage:(LZMessageModel *)message
{
    _message = message;
    
    //时间
    CGFloat timeX = 0;
    CGFloat timeY = 0;
    CGFloat timeW = kScreenWidth;
    CGFloat timeH = kNormalHeight;
    
    _timeF = CGRectMake(timeX, timeY, timeW, timeH);
    
     //头像
    CGFloat iconX = 0;
    CGFloat iconY = CGRectGetMaxY(_timeF);
    CGFloat iconW = kIconWidth;
    CGFloat iconH = kIconHeight;
    
    
    if (message.type == SENDER) {
        iconX = kScreenWidth - iconW - kPadding;
    } else {
        iconX = kPadding;
    }
    
    _iconF = CGRectMake(iconX, iconY, iconW, iconH);
    
    //正文
    CGFloat textViewX = 0;
    CGFloat textViewY = iconY;
    
    CGSize textMaxSize = CGSizeMake(200, MAXFLOAT);
    CGSize textRealSize = [message.text boundingRectWithSize:textMaxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:kButtonFont} context:nil].size;
    
    if (message.type == SENDER) {
        textViewX = kScreenWidth - iconW - kPadding - textMaxSize.width;
    } else {
        textViewX = kPadding + iconW;
    }
    
//    _textViewF = CGRectMake(textViewX, textViewY, textViewW, textViewH);
    _textViewF = (CGRect){{textViewX, textViewY}, textRealSize};
    
    
    //高度
    CGFloat iconMaxY = CGRectGetMaxY(_iconF);
    CGFloat textMaxY = CGRectGetMaxY(_textViewF);
    
    _cellH = MAX(iconMaxY, textMaxY);
}

@end
