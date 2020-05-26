//
//  Milk.h
//  Coffee
//
//  Created by Maksim Romanov on 26.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import "CoffeeDecorator.h"
#import "Coffee.h"

NS_ASSUME_NONNULL_BEGIN

@interface Milk : NSObject <CoffeeDecorator>

- (instancetype)initWithBaseCoffee:(id <Coffee> _Nonnull)coffee andMilk:(BOOL)withMilk;

@end

NS_ASSUME_NONNULL_END
