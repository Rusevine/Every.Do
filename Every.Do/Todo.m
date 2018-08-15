//
//  Todo.m
//  Every.Do
//
//  Created by Wiljay Flores on 2018-08-14.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "Todo.h"

@interface Todo ()
@property (nonatomic) BOOL isCompleted;
@end


@implementation Todo

-(instancetype)initWithTitle:(NSString *)title detail:(NSString *)detail{
    if(self = [super init]){
        _title = title;
        _detail = detail;
        _priorityNumber = 0;
        _isCompleted = NO;
    }
    return self;
}

@end
