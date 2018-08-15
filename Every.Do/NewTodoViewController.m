//
//  NewTodoViewController.m
//  Every.Do
//
//  Created by Wiljay Flores on 2018-08-14.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "NewTodoViewController.h"
#import "Todo.h"

@interface NewTodoViewController ()
@property (weak, nonatomic) IBOutlet UITextField *titleText;
@property (weak, nonatomic) IBOutlet UITextField *detailsText;

@end

@implementation NewTodoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addTodo:(UIButton *)sender {
    Todo *addTodo = [[Todo alloc] init];
    addTodo.title = self.titleText.text;
    addTodo.detail = self.detailsText.text;
    [self.delegate didAddNewTodo:addTodo];
    [self.navigationController popToRootViewControllerAnimated:YES];
}


@end
