//
//  LZMessageModel.h
//  day08-QQ-01
//
//  Created by leon on 15/10/2.
//  Copyright © 2015年 leon. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    SENDER = 1,
    RECEIVER = 0
}LZMessageModelType;


@interface LZMessageModel : NSObject

//正文
@property(nonatomic, copy) NSString *text;
//时间
@property(nonatomic, copy) NSString *time;
//发送类型
@property(nonatomic, assign) LZMessageModelType type;

- (instancetype)initWithDict:(NSDictionary*)dict;

+ (instancetype)MessageWithDict:(NSDictionary *)dict;

@end
