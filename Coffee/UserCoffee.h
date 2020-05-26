//
//  UserCoffee.h
//  Coffee
//
//  Created by Maksim Romanov on 25.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Coffee.h"

NS_ASSUME_NONNULL_BEGIN

@interface UserCoffee: NSObject <Coffee>

- (NSUInteger)price;

@end

NS_ASSUME_NONNULL_END
