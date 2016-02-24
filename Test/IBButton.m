//
//  IBButton.m
//  driverapp_iOS
//
//  Created by John on 15/8/31.
//  Copyright (c) 2015年 dasmaster. All rights reserved.
//

#import "IBButton.h"

@implementation IBButton

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
