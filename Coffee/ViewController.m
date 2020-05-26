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

@interface ViewController ()

@property (strong, nonatomic) CoffeeView *coffeeView;
@property (strong, nonatomic) UserCoffee *userCoffee;
//@property (strong,nonatomic) CoffeeStrenght *selectedStrenght;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.coffeeView = [[CoffeeView alloc] initWithFrame:self.view.frame];
    self.view = self.coffeeView;
    [self.coffeeView.strenghtControl addTarget:self action:@selector(strenghtChanged:) forControlEvents: UIControlEventValueChanged];
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

- (NSUInteger)getPriceOf:(id<Coffee>)coffee {
    self.userCoffee = [[UserCoffee alloc] init];
    Strenght *strenght = [[Strenght alloc] initWith:self.userCoffee andCoffeeStrenght:[self selectedStrenght]];

    return [strenght price];
}


- (void)strenghtChanged:(UISegmentedControl *)strenghtControl{
    NSLog(@"userCoffee price: %lu",[self getPriceOf:self.userCoffee]);
}

@end
