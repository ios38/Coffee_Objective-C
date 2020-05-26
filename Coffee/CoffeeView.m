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
    
    [[UISegmentedControl appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1], NSFontAttributeName:[UIFont systemFontOfSize:16 weight:UIFontWeightRegular]} forState:UIControlStateNormal];
    
    UILabel *strenghtLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 45, self.bounds.size.width - 40, 40)];
    strenghtLabel.textAlignment = NSTextAlignmentCenter;
    strenghtLabel.font = [UIFont systemFontOfSize:20 weight:UIFontWeightRegular];
    strenghtLabel.textColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];
    strenghtLabel.text = @"Coffee strenght";
    [self addSubview:strenghtLabel];

    self.strenghtControl = [[UISegmentedControl alloc] initWithItems:@[@"Standart",@"Strong",@"Very strong"]];
    self.strenghtControl.frame = CGRectMake(20, 90, self.bounds.size.width - 40, 40);
    self.strenghtControl.selectedSegmentTintColor = [UIColor darkGrayColor];
    self.strenghtControl.backgroundColor = [UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:1];
    self.strenghtControl.selectedSegmentIndex = 0;
    [self addSubview:self.strenghtControl];
    
    UILabel *volumeLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 155, self.bounds.size.width - 40, 40)];
    volumeLabel.textAlignment = NSTextAlignmentCenter;
    volumeLabel.font = [UIFont systemFontOfSize:20 weight:UIFontWeightRegular];
    volumeLabel.textColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];
    volumeLabel.text = @"Cup volume";
    [self addSubview:volumeLabel];

    self.volumeControl = [[UISegmentedControl alloc] initWithItems:@[@"Standart",@"Medium",@"Big"]];
    self.volumeControl.frame = CGRectMake(20, 200, self.bounds.size.width - 40, 40);
    self.volumeControl.selectedSegmentTintColor = [UIColor darkGrayColor];
    self.volumeControl.backgroundColor = [UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:1];
    self.volumeControl.selectedSegmentIndex = 0;
    [self addSubview:self.volumeControl];
    
    self.priceLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 300, self.bounds.size.width - 40, 40)];
    self.priceLabel.textAlignment = NSTextAlignmentCenter;
    self.priceLabel.font = [UIFont systemFontOfSize:20 weight:UIFontWeightRegular];
    self.priceLabel.textColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];
    self.priceLabel.text = @"Coffee price:";
    [self addSubview:self.priceLabel];

}


@end
