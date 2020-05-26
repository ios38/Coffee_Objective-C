//
//  Strenght.m
//  Coffee
//
//  Created by Maksim Romanov on 25.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import "Strenght.h"

@interface Strenght ()

@property (assign,nonatomic) CoffeeStrenght coffeeStrenght;

@end

@implementation Strenght

- (instancetype) initWith:(id <Coffee> _Nonnull)coffee andCoffeeStrenght:(CoffeeStrenght)coffeeStrenght {
    self = [super init];
    if (self) {
        self.baseCoffee = coffee;
        self.coffeeStrenght = coffeeStrenght;
    }
    return self;
}

- (NSUInteger) price {
    switch (self.coffeeStrenght) {
        case standart:
            return self.baseCoffee.price;
            break;
        case strong:
            return self.baseCoffee.price + 30;
            break;
        case veryStrong:
            return self.baseCoffee.price + 60;
            break;
    }
}

@end
