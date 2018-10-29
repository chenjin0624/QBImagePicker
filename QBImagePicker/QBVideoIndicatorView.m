//
//  QBVideoIndicatorView.m
//  QBImagePicker
//
//  Created by Katsuma Tanaka on 2015/04/04.
//  Copyright (c) 2015 Katsuma Tanaka. All rights reserved.
//

#import "QBVideoIndicatorView.h"

@interface QBVideoIndicatorView()
@property (nonatomic, strong)CAGradientLayer *gradientLayer;
@end

@implementation QBVideoIndicatorView

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    // Add gradient layer
    self.gradientLayer = [CAGradientLayer layer];
    self.gradientLayer.frame = self.bounds;
    self.gradientLayer.colors = @[
                             (__bridge id)[[UIColor clearColor] CGColor],
                             (__bridge id)[[UIColor blackColor] CGColor]
                             ];
    
    [self.layer insertSublayer:self.gradientLayer atIndex:0];
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    self.gradientLayer.frame = self.bounds;
}

@end
