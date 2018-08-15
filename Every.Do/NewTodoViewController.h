//
//  NewTodoViewController.h
//  Every.Do
//
//  Created by Wiljay Flores on 2018-08-14.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "ViewController.h"
#import "Todo.h"

@protocol NewTodoDelegate
-(void)didAddNewTodo:(Todo*)todo;
@end

@interface NewTodoViewController : ViewController

@property (nonatomic,weak) id<NewTodoDelegate> delegate;

@end
