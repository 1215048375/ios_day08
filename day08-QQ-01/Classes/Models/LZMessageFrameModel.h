//
//  LZMessageFrameModle.h
//  day08-QQ-01
//
//  Created by leon on 15/10/2.
//  Copyright © 2015年 leon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class LZMessageModel;

@interface LZMessageFrameModel : NSObject

@property(nonatomic, assign, readonly)CGRect timeF;

@property(nonatomic, assign, readonly)CGRect textViewF;

@property(nonatomic, assign, readonly)CGRect iconF;

@property(nonatomic, assign, readonly)CGFloat cellH;

@property(nonatomic, strong)LZMessageModel *message;

@end
