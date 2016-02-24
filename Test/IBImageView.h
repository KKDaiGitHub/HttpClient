//
//  IBImageView.h
//  driverapp_iOS
//
//  Created by 李振华 on 15/11/9.
//  Copyright © 2015年 dasmaster. All rights reserved.
//

#import <UIKit/UIKit.h>
IB_DESIGNABLE
@interface IBImageView : UIImageView
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
@property (nonatomic, strong) IBInspectable UIColor *borderColor;
@end
