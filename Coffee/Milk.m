//
//  Milk.m
//  Coffee
//
//  Created by Maksim Romanov on 26.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import "Milk.h"

@interface Milk()

@property (assign,nonatomic) BOOL withMilk;

@end

@implementation Milk

@synthesize baseCoffee;

- (instancetype)initWithBaseCoffee:(id <Coffee> _Nonnull)coffee andMilk:(BOOL)withMilk {
    self = [super init];
    if (self) {
        self.baseCoffee = coffee;
        self.withMilk = withMilk;
    }
    return self;
}

- (NSUInteger) price {
    if (self.withMilk) {
        return self.baseCoffee.price + 20;
    } else {
        return self.baseCoffee.price;
    }
}

@end
