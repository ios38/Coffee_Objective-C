//
//  Cream.m
//  Coffee
//
//  Created by Maksim Romanov on 26.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import "Cream.h"

@interface Cream()

@property (assign,nonatomic) BOOL withCream;

@end

@implementation Cream

@synthesize baseCoffee;

- (instancetype)initWithBaseCoffee:(id <Coffee> _Nonnull)coffee andCream:(BOOL)withCream {
    self = [super init];
    if (self) {
        self.baseCoffee = coffee;
        self.withCream = withCream;
    }
    return self;
}

- (NSUInteger) price {
    if (self.withCream) {
        return self.baseCoffee.price + 40;
    } else {
        return self.baseCoffee.price;
    }
}

@end
