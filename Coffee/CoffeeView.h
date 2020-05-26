//
//  CoffeeView.h
//  Coffee
//
//  Created by Maksim Romanov on 26.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CoffeeView : UIView

@property (strong,nonatomic) UISegmentedControl *strenghtControl;
@property (strong,nonatomic) UISegmentedControl *volumeControl;
@property (strong,nonatomic) UISwitch *sugarSwitch;
@property (strong,nonatomic) UISwitch *milkSwitch;
@property (strong,nonatomic) UISwitch *creamSwitch;
@property (strong,nonatomic) UILabel *priceLabel;

@end

NS_ASSUME_NONNULL_END
