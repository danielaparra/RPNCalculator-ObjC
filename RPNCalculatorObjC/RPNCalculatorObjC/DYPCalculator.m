//
//  DYPCalculator.m
//  RPNCalculatorObjC
//
//  Created by Daniela Parra on 11/15/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import "DYPCalculator.h"
#import "DYPStack.h"

@interface DYPCalculator ()

@property DYPStack *stack;

@end

@implementation DYPCalculator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _stack = [[DYPStack alloc] initWithArray:@[@0.0, @0.0]];
    }
    return self;
}

- (void)pushNumber:(double)value
{
    [self.stack push:value];
}

- (void)applyOperator:(OperatorType)_operator
{
    double a = [self.stack pop];
    double b = [self.stack pop];
    double result;
    
    switch (_operator) {
        case Add:
            result = a + b;
        case Subtract:
            result = a - b;
        case Multiply:
            result = a * b;
        case Divide:
            result = a / b;
    }
    
    [self.stack push:result];
}

- (void)clear
{
    self.stack = [[DYPStack alloc] initWithArray:@[@0.0, @0.0]];
}

- (double)topValue
{
    return [self.stack peek];
}

@end
