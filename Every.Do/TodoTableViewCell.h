//
//  TodoTableViewCell.h
//  Every.Do
//
//  Created by Wiljay Flores on 2018-08-14.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Todo;

@interface TodoTableViewCell : UITableViewCell

@property (nonatomic) Todo *todoCell;

- (void)configureCell:(Todo*)todo;

@end
