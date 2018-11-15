//
//  DYPStack.m
//  RPNCalculatorObjC
//
//  Created by Daniela Parra on 11/15/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import "DYPStack.h"

@interface DYPStack ()

@property (nonatomic) NSMutableArray *values;

@end

@implementation DYPStack

- (instancetype)initWithArray:(NSArray *)array
{
    self = [super init];
    if (self) {
        _values = [array mutableCopy];
    }
    return self;
}

- (void)push:(double)number
{
    [self.values addObject:@(number)];
}

- (double)pop
{
    NSNumber *lastNumber = self.values.lastObject;
    [self.values removeLastObject];
    return lastNumber.doubleValue;
}

- (double)peek
{
    return [self.values.lastObject doubleValue];
}

@end
