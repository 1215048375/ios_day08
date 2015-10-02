//
//  ViewController.m
//  day08-QQ-01
//
//  Created by leon on 15/10/2.
//  Copyright © 2015年 leon. All rights reserved.
//

#import "ViewController.h"
#import "LZMessageCell.h"
#import "LZMessageModel.h"
#import "LZMessageFrameModel.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property(nonatomic , strong)NSMutableArray *messages;

@end

@implementation ViewController

- (NSMutableArray *)messages
{
    if (_messages == nil) {
        NSArray *array = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"messages.plist" ofType:nil]];
        _messages = [NSMutableArray array];
        for (NSDictionary *dict in array) {
            LZMessageModel *message = [LZMessageModel MessageWithDict:dict];
            
            LZMessageFrameModel *fm = [[LZMessageFrameModel alloc]init];
            fm.message = message;
            
            
            [_messages addObject: fm];
        }
    }
    
    return _messages;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - tableview datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.messages.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LZMessageFrameModel *model = self.messages[indexPath.row];
    return model.cellH;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LZMessageCell *cell = [LZMessageCell messageCellWithTableView:tableView];
    
    LZMessageFrameModel *model = self.messages[indexPath.row];
    
    cell.frameMessage = model;
    
    return cell;
}

@end
