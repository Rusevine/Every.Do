//
//  ViewController.m
//  Every.Do
//
//  Created by Wiljay Flores on 2018-08-14.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "TodoTableViewCell.h"
#import "NewTodoViewController.h"
#import "Todo.h"

@interface ViewController () <NewTodoDelegate, UITableViewDelegate>
@property (nonatomic, strong) NSMutableArray *todos;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Todo *clean = [[Todo alloc] initWithTitle:@"clean" detail:@"do itfdsfdfdsfsfdfsfdfsdff"];
    Todo *homework = [[Todo alloc] initWithTitle:@"homework" detail:@"do itldsffoskejlfkgoifgjlkfhdljshdfg"];
    Todo *cook = [[Todo alloc] initWithTitle:@"cook" detail:@"do itkjfkdjs[spdfioisodifodsifdfsiodifos"];
    
    _todos = [@[clean,homework,cook] mutableCopy];
      self.tableView.delegate = self;
    [self arrangePriority];
    
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(TodoTableViewCell*)sender
{
    if ([segue.identifier isEqualToString:@"todoSegue"]) {
        DetailViewController *dvc = segue.destinationViewController;
        TodoTableViewCell *cell = sender;
        
        dvc.todoDetail = cell.todoCell;
    }
    if ([segue.identifier isEqualToString:@"newTodoSegue"]) {
        NewTodoViewController *dvc = segue.destinationViewController;
        dvc.delegate = self;
        
    }
}

-(void)didAddNewTodo:(Todo*)todo{
    [self.todos addObject:todo];
    
    
    [self arrangePriority];
    [self.tableView reloadData];
}

- (UISwipeActionsConfiguration *)tableView:(UITableView *)tableView leadingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath{
    UIContextualAction *completed = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleDestructive title:@"Complete" handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)){
        [self.todos removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationRight];
        [self arrangePriority];
        [tableView reloadData];
    }];
    completed.backgroundColor = [UIColor greenColor];
    UISwipeActionsConfiguration *configuration = [UISwipeActionsConfiguration configurationWithActions:@[completed]];
    configuration.performsFirstActionWithFullSwipe = NO;
    [self.tableView reloadData];
    return configuration;
    
}

-(UISwipeActionsConfiguration *)tableView:(UITableView *)tableView trailingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath{
    UIContextualAction *delete = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleDestructive title:@"Delete" handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)){
        [self.todos removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
        [self arrangePriority];
        [tableView reloadData];
    }];
    delete.backgroundColor = [UIColor redColor];
    UISwipeActionsConfiguration *configuration = [UISwipeActionsConfiguration configurationWithActions:@[delete]];
    configuration.performsFirstActionWithFullSwipe = NO;
    return configuration;

}

-(void)arrangePriority{
    int index = 0;
    for (Todo* todo in self.todos) {
        index++;
        todo.priorityNumber = index;
    }
}

@end
