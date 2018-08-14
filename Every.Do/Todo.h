//
//  Todo.h
//  Every.Do
//
//  Created by Wiljay Flores on 2018-08-14.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Todo : NSObject

-(instancetype)initWithTitle:(NSString *)title detail:(NSString *)detail priority:(NSInteger *)priority;

@end
