//
//  UILabel+Chain.h
//  UICategoryTest
//
//  Created by 李曈 on 2019/6/6.
//  Copyright © 2019 李曈. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef UILabel * (^ChainBackgroundColor)(UIColor *backgroundColor);
#define ChainBackgroundColor(color) ^UILabel * (UIColor *backgroundColor)

typedef UILabel * (^ChainText)(NSString *text);
#define ChainText(text) ^UILabel * (NSString *text)

typedef UILabel * (^ChainTextColor) (UIColor *textColor);
#define ChainTextColor(textColor) ^UILabel * (UIColor *textColor)

typedef UILabel * (^ChainFont) (UIFont *font);
#define ChainFont(font) ^UILabel * (UIFont *font)

typedef UILabel * (^ChainFrame)(CGRect frame);
#define ChainFrame(frame) ^UILabel * (CGRect frame)

typedef UILabel * (^ChainSuperView)(UIView *superView);
#define ChainSuperView(superView) ^UILabel * (UIView *superView)

typedef UILabel * (^ChainTextAlignment)(NSTextAlignment textAlignment);
#define ChainTextAlignment(textAlignment) ^UILabel * (NSTextAlignment textAlignment)

typedef UILabel * (^ChainCornerRadius)(CGFloat cornerRadius);
#define ChainCornerRadius(cornerRadius) ^UILabel * (CGFloat cornerRadius)

typedef UILabel * (^ChainMasksToBounds)(BOOL masksToBounds);
#define ChainMasksToBounds(masksToBounds) ^UILabel * (BOOL masksToBounds)

typedef UILabel * (^ChainHidden)(BOOL hidden);
#define ChainHidden(hidden) ^UILabel * (BOOL hidden)

typedef UILabel * (^ChainBorderColor)(UIColor *color);
#define ChainBorderColor(color) ^UILabel * (UIColor *color)

typedef UILabel * (^ChainBorderWidth)(CGFloat borderWidth);
#define ChainBorderWidth(borderWidth) ^UILabel * (CGFloat borderWidth)

@interface UILabel (Chain)

@property (nonatomic, readonly, copy) ChainBackgroundColor backgroundColor_chain;

@property (nonatomic, readonly, copy) ChainFrame frame_chain;

@property (nonatomic, readonly, copy) ChainText text_chain;

@property (nonatomic, readonly, copy) ChainTextColor textColor_chain;

@property (nonatomic, readonly, copy) ChainSuperView superView_chain;

@property (nonatomic, readonly, copy) ChainTextAlignment textAlignment_chain;

@property (nonatomic, readonly, copy) ChainFont font_chain;

@property (nonatomic, readonly, copy) ChainCornerRadius cornerRadius_chain;

@property (nonatomic, readonly, copy) ChainMasksToBounds masksToBounds_chain;

@property (nonatomic, readonly, copy) ChainHidden hidden_chain;

@property (nonatomic, readonly, copy) ChainBorderColor borderColor_chain;

@property (nonatomic, readonly, copy) ChainBorderWidth borderWidth_chain;

@end

