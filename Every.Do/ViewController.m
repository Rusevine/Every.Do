//
//  ViewController.m
//  Every.Do
//
//  Created by Wiljay Flores on 2018-08-14.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "ViewController.h"
#import "TodoTableViewCell.h"
#import "Todo.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *todos;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Todo *clean = [[Todo alloc] initWithTitle:@"clean" detail:@"do it" priority:1];
    Todo *homework = [[Todo alloc] initWithTitle:@"homework" detail:@"do it" priority:2];
    Todo *cook = [[Todo alloc] initWithTitle:@"cook" detail:@"do it" priority:3];
    
    _todos = @[clean,homework,cook];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.todos.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    TodoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"todoCell" forIndexPath:indexPath];
    
    Todo *todo = self.todos[indexPath.row];
    [cell configureCell:todo];
    
    return cell;
}





@end
