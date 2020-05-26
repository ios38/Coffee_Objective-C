//
//  Strenght.h
//  Coffee
//
//  Created by Maksim Romanov on 25.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import "CoffeeDecorator.h"
#import "Coffee.h"

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    standart,
    strong,
    veryStrong
} CoffeeStrenght;


@interface Strenght: NSObject <CoffeeDecorator>

- (instancetype)initWithBaseCoffee:(id <Coffee> _Nonnull)coffee andCoffeeStrenght:(CoffeeStrenght)coffeeStrenght;

@end

NS_ASSUME_NONNULL_END
