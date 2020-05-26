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
#import "Sugar.h"
#import "Milk.h"
#import "Cream.h"

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
    [self.coffeeView.sugarSwitch addTarget:self action:@selector(coffeeChanged) forControlEvents: UIControlEventValueChanged];
    [self.coffeeView.milkSwitch addTarget:self action:@selector(milkChanged) forControlEvents: UIControlEventValueChanged];
    [self.coffeeView.creamSwitch addTarget:self action:@selector(creamChanged) forControlEvents: UIControlEventValueChanged];
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
    Sugar *sugar = [[Sugar alloc] initWithBaseCoffee:volume andSugar:self.coffeeView.sugarSwitch.isOn];
    Milk *milk = [[Milk alloc] initWithBaseCoffee:sugar andMilk:self.coffeeView.milkSwitch.isOn];
    Cream *cream = [[Cream alloc] initWithBaseCoffee:milk andCream:self.coffeeView.creamSwitch.isOn];

    return [cream price];
}

- (void) coffeeChanged {
    self.coffeeView.priceLabel.text = [NSString stringWithFormat:@"Coffee price: %lu",[self getPriceOf:self.userCoffee]];
}

- (void) milkChanged {
    [self.coffeeView.creamSwitch setOn:NO animated:YES];
    self.coffeeView.priceLabel.text = [NSString stringWithFormat:@"Coffee price: %lu",[self getPriceOf:self.userCoffee]];
}

- (void) creamChanged {
    [self.coffeeView.milkSwitch setOn:NO animated:YES];
    self.coffeeView.priceLabel.text = [NSString stringWithFormat:@"Coffee price: %lu",[self getPriceOf:self.userCoffee]];
}

@end
