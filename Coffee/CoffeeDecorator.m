//
//  CoffeeDecorator.m
//  Coffee
//
//  Created by Maksim Romanov on 25.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import "CoffeeDecorator.h"

@implementation CoffeeDecorator

- (instancetype)initWithBaseCoffee:(id <Coffee> _Nonnull)baseCoffee {
    self = [super init];
    if (self) {
        self.baseCoffee = baseCoffee;
    }
    return self;
}

- (NSUInteger)price {
    return self.baseCoffee.price;
}

@end
