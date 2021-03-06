//
//  ViewController.m
//  Coffee
//
//  Created by Maksim Romanov on 25.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import "ViewController.h"
#import "CoffeeView.h"
#import "UserCoffee.h"
#import "Strenght.h"
#import "Volume.h"

@interface ViewController ()

@property (strong, nonatomic) CoffeeView *coffeeView;
@property (strong, nonatomic) UserCoffee *userCoffee;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.coffeeView = [[CoffeeView alloc] initWithFrame:self.view.frame];
    self.view = self.coffeeView;
    [self.coffeeView.strenghtControl addTarget:self action:@selector(coffeeChanged) forControlEvents: UIControlEventValueChanged];
    [self.coffeeView.volumeControl addTarget:self action:@selector(coffeeChanged) forControlEvents: UIControlEventValueChanged];
    [self coffeeChanged];
}

- (CoffeeStrenght) selectedStrenght {
    switch (self.coffeeView.strenghtControl.selectedSegmentIndex) {
        case 0:
            return standart;
            break;
        case 1:
            return strong;
            break;
        default:
            return veryStrong;
            break;
    }
}

- (CoffeeVolume) selectedVolume {
    switch (self.coffeeView.volumeControl.selectedSegmentIndex) {
        case 0:
            return small;
            break;
        case 1:
            return medium;
            break;
        default:
            return big;
            break;
    }
}

- (NSUInteger) getPriceOf:(id<Coffee>)coffee {
    self.userCoffee = [[UserCoffee alloc] init];
    Strenght *strenght = [[Strenght alloc] initWithBaseCoffee:self.userCoffee andCoffeeStrenght:[self selectedStrenght]];
    Volume *volume = [[Volume alloc] initWithBaseCoffee:strenght andCoffeeVolume:[self selectedVolume]];

    return [volume price];
}


- (void) coffeeChanged {
    //NSLog(@"userCoffee price: %lu",[self getPriceOf:self.userCoffee]);
    self.coffeeView.priceLabel.text = [NSString stringWithFormat:@"Coffee price: %lu",[self getPriceOf:self.userCoffee]];
}

@end
