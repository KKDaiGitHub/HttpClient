//
//  IBButton.h
//  driverapp_iOS
//
//  Created by John on 15/8/31.
//  Copyright (c) 2015年 dasmaster. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface IBButton : UIButton

@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
@property (nonatomic, strong) IBInspectable UIColor *borderColor;


@end
