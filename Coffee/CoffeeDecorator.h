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

@interface CoffeeDecorator : NSObject <Coffee>

@property (strong,nonatomic) id <Coffee> baseCoffee;

- (instancetype)initWithBaseCoffee:(id <Coffee> _Nonnull) baseCoffee;

@end

NS_ASSUME_NONNULL_END
