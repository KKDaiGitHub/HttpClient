//
//  IBView.m
//  driverapp_iOS
//
//  Created by John on 15/8/25.
//  Copyright (c) 2015年 dasmaster. All rights reserved.
//

#import "IBView.h"

@implementation IBView

- (instancetype)initWithFrame:(CGRect)frame
{
	if (self = [super initWithFrame:frame]) {
		self.layer.borderColor = [[UIColor blackColor] CGColor];
		self.layer.borderWidth = 1;
		self.layer.cornerRadius = 4;
		self.layer.masksToBounds = YES;
	}
	return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	if (self = [super initWithCoder:aDecoder]) {
		self.layer.borderColor = [[UIColor blackColor] CGColor];
		self.layer.borderWidth = 1;
		self.layer.cornerRadius = 4;
		self.layer.masksToBounds = YES;
	}
	return self;
}

- (void)prepareForInterfaceBuilder
{
//	self.layer.borderColor = [[UIColor blackColor] CGColor];
//	self.layer.borderWidth = 2;
//	self.layer.cornerRadius = 5;
//	self.layer.masksToBounds = YES;
}

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

- (void)drawRect:(CGRect)rect
{
	[super drawRect:rect];
}

- (void)setSize:(CGSize)size
{
	self.bounds = CGRectMake(0, 0, size.width, size.height);
}
//- (void)drawRect:(CGRect)rect
//{
//	[super drawRect:rect];
//	//UIRectFrame(_frame);
//}

//- (void)setFrame:(CGRect)frame
//{
//	_frame = frame;
//	[self setNeedsDisplay];
//}

@end
