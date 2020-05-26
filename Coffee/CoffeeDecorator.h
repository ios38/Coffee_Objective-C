//
//  CoffeeDecorator.h
//  Coffee
//
//  Created by Maksim Romanov on 25.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Coffee.h"

NS_ASSUME_NONNULL_BEGIN

@protocol CoffeeDecorator <Coffee>

@property (strong,nonatomic) id <Coffee> _Nonnull baseCoffee;

@optional

- (instancetype)initWithBaseCoffee:(id <Coffee> _Nonnull) baseCoffee;

@end

NS_ASSUME_NONNULL_END
