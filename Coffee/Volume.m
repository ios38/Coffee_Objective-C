//
//  Volume.m
//  Coffee
//
//  Created by Maksim Romanov on 26.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import "Volume.h"

@interface Volume()

@property (assign,nonatomic) CoffeeVolume coffeeVolume;

@end

@implementation Volume

@synthesize baseCoffee;

- (instancetype)initWithBaseCoffee:(id <Coffee> _Nonnull)coffee andCoffeeVolume:(CoffeeVolume)coffeeVolume {
    self = [super init];
    if (self) {
        self.baseCoffee = coffee;
        self.coffeeVolume = coffeeVolume;
    }
    return self;
}

- (NSUInteger) price {
    switch (self.coffeeVolume) {
        case small:
            return self.baseCoffee.price;
            break;
        case medium:
            return self.baseCoffee.price + 30;
            break;
        case big:
            return self.baseCoffee.price + 60;
            break;
    }
}

@end
