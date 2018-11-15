//
//  DYPStack.h
//  RPNCalculatorObjC
//
//  Created by Daniela Parra on 11/15/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYPStack : NSObject

- (instancetype)initWithArray:(NSArray *)array;

- (void)push:(double)number;

- (double)pop;

- (double)peek;

@end

NS_ASSUME_NONNULL_END
