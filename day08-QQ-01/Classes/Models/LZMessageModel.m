//
//  LZMessageModel.m
//  day08-QQ-01
//
//  Created by leon on 15/10/2.
//  Copyright © 2015年 leon. All rights reserved.
//

#import "LZMessageModel.h"

@implementation LZMessageModel

- (instancetype)initWithDict:(NSDictionary*)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)MessageWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}

@end
