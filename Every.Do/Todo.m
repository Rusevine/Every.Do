//
//  Todo.m
//  Every.Do
//
//  Created by Wiljay Flores on 2018-08-14.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "Todo.h"

@interface Todo ()
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *detail;
@property (nonatomic) NSInteger *priorityNumber;
@property (nonatomic) BOOL isCompleted;
@end


@implementation Todo

-(instancetype)initWithTitle:(NSString *)title detail:(NSString *)detail priority:(NSInteger *)priority{
    if(self = [super init]){
        _title = title;
        _detail = detail;
        _priorityNumber = priority;
        _isCompleted = NO;
    }
    return self;
}

@end
