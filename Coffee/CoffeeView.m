//
//  CoffeeView.m
//  Coffee
//
//  Created by Maksim Romanov on 26.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import "CoffeeView.h"

@implementation CoffeeView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self configureUI];
    }
    return self;
}

- (void)configureUI {
    
    [[UISegmentedControl appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1],                                                              NSFontAttributeName:[UIFont systemFontOfSize:16 weight:UIFontWeightRegular]} forState:UIControlStateNormal];
    self.strenghtControl = [[UISegmentedControl alloc] initWithItems:@[@"Standart",@"Strong",@"Very strong"]];
    self.strenghtControl.frame = CGRectMake(20, 45, self.bounds.size.width - 40, 40);
    self.strenghtControl.selectedSegmentTintColor = [UIColor darkGrayColor];
    self.strenghtControl.backgroundColor = [UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:1];

    self.strenghtControl.selectedSegmentIndex = 0;
    [self addSubview:self.strenghtControl];
        
}


@end
