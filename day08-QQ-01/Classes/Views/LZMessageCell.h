//
//  LZMessageCell.h
//  day08-QQ-01
//
//  Created by leon on 15/10/2.
//  Copyright © 2015年 leon. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LZMessageFrameModel;
@interface LZMessageCell : UITableViewCell

+(instancetype) messageCellWithTableView:(UITableView *)tableView;

//frame模型
@property(nonatomic, strong)LZMessageFrameModel *frameMessage;

@end
