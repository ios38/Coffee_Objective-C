//
//  Sugar.m
//  Coffee
//
//  Created by Maksim Romanov on 26.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import "Sugar.h"

@interface Sugar()

@property (assign,nonatomic) BOOL withSugar;

@end

@implementation Sugar

@synthesize baseCoffee;

- (instancetype)initWithBaseCoffee:(id <Coffee> _Nonnull)coffee andSugar:(BOOL)withSugar {
    self = [super init];
    if (self) {
        self.baseCoffee = coffee;
        self.withSugar = withSugar;
    }
    return self;
}

- (NSUInteger) price {
    if (self.withSugar) {
        return self.baseCoffee.price + 10;
    } else {
        return self.baseCoffee.price;
    }
}

@end
