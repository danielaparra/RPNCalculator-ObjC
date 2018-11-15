//
//  DYPCalculator.h
//  RPNCalculatorObjC
//
//  Created by Daniela Parra on 11/15/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYPCalculator : NSObject

typedef NS_ENUM(NSInteger, OperatorType) {
    Add,
    Subtract,
    Multiply,
    Divide
};

- (void)pushNumber:(double)value;

- (void)applyOperator:(OperatorType)_operator;

- (void)clear;

@property (nonatomic, readonly) double topValue;

@end

NS_ASSUME_NONNULL_END
