//
//  DetailViewController.m
//  Every.Do
//
//  Created by Wiljay Flores on 2018-08-14.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "DetailViewController.h"
#import "Todo.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *details;
@property (weak, nonatomic) IBOutlet UILabel *title2;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.details.text = self.todoDetail.detail;
    self.title2.text = self.todoDetail.title;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
