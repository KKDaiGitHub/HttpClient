//
//  IBImageView.m
//  driverapp_iOS
//
//  Created by 李振华 on 15/11/9.
//  Copyright © 2015年 dasmaster. All rights reserved.
//

#import "IBImageView.h"

@implementation IBImageView

- (void)setBorderColor:(UIColor *)borderColor
{
    _borderColor = borderColor;
    self.layer.borderColor = [borderColor CGColor];
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    _borderWidth = borderWidth;
    self.layer.borderWidth = borderWidth;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    _cornerRadius = cornerRadius;
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}

@end
