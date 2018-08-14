//
//  TodoTableViewCell.m
//  Every.Do
//
//  Created by Wiljay Flores on 2018-08-14.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "TodoTableViewCell.h"
#import "Todo.h"
#import "DetailViewController.h"

@interface TodoTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *detail;
@property (weak, nonatomic) IBOutlet UILabel *priority;


@end

@implementation TodoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)configureCell:(Todo*)todo{
    
    self.todoCell = todo;
    NSString *title = todo.title;
    NSString *detail = todo.detail;
    NSString *priority = [NSString stringWithFormat:@"%d",todo.priorityNumber];
    self.title.text = title;
    self.detail.text = detail;
    self.priority.text = priority;
    
}


@end
