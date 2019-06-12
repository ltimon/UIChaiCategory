//
//  UILabel+Chain.h
//  UICategoryTest
//
//  Created by 李曈 on 2019/6/6.
//  Copyright © 2019 李曈. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef UILabel * (^ChainLabelBackgroundColor)(UIColor *backgroundColor);
#define ChainLabelBackgroundColor(color) ^UILabel * (UIColor *backgroundColor)

typedef UILabel * (^ChainLabelText)(NSString *text);
#define ChainLabelText(text) ^UILabel * (NSString *text)

typedef UILabel * (^ChainLabelTextColor) (UIColor *textColor);
#define ChainLabelTextColor(textColor) ^UILabel * (UIColor *textColor)

typedef UILabel * (^ChainLabelFont) (UIFont *font);
#define ChainLabelFont(font) ^UILabel * (UIFont *font)

typedef UILabel * (^ChainLabelFrame)(CGRect frame);
#define ChainLabelFrame(frame) ^UILabel * (CGRect frame)

typedef UILabel * (^ChainLabelSuperView)(UIView *superView);
#define ChainLabelSuperView(superView) ^UILabel * (UIView *superView)

typedef UILabel * (^ChainLabelTextAlignment)(NSTextAlignment textAlignment);
#define ChainLabelTextAlignment(textAlignment) ^UILabel * (NSTextAlignment textAlignment)

typedef UILabel * (^ChainLabelCornerRadius)(CGFloat cornerRadius);
#define ChainLabelCornerRadius(cornerRadius) ^UILabel * (CGFloat cornerRadius)

typedef UILabel * (^ChainLabelMasksToBounds)(BOOL masksToBounds);
#define ChainLabelMasksToBounds(masksToBounds) ^UILabel * (BOOL masksToBounds)

typedef UILabel * (^ChainLabelHidden)(BOOL hidden);
#define ChainLabelHidden(hidden) ^UILabel * (BOOL hidden)

typedef UILabel * (^ChainLabelBorderColor)(UIColor *color);
#define ChainLabelBorderColor(color) ^UILabel * (UIColor *color)

typedef UILabel * (^ChainLabelBorderWidth)(CGFloat borderWidth);
#define ChainLabelBorderWidth(borderWidth) ^UILabel * (CGFloat borderWidth)

typedef UILabel * (^ChainLabelAttributeText)(NSAttributedString *attributedText);
#define ChainLabelAttributeText(attributedText) ^UILabel * (NSAttributedString *attributedText)

@interface UILabel (Chain)

@property (nonatomic, readonly, copy) ChainLabelBackgroundColor backgroundColor_chain;

@property (nonatomic, readonly, copy) ChainLabelFrame frame_chain;

@property (nonatomic, readonly, copy) ChainLabelText text_chain;

@property (nonatomic, readonly, copy) ChainLabelTextColor textColor_chain;

@property (nonatomic, readonly, copy) ChainLabelSuperView superView_chain;

@property (nonatomic, readonly, copy) ChainLabelTextAlignment textAlignment_chain;

@property (nonatomic, readonly, copy) ChainLabelFont font_chain;

@property (nonatomic, readonly, copy) ChainLabelCornerRadius cornerRadius_chain;

@property (nonatomic, readonly, copy) ChainLabelMasksToBounds masksToBounds_chain;

@property (nonatomic, readonly, copy) ChainLabelHidden hidden_chain;

@property (nonatomic, readonly, copy) ChainLabelBorderColor borderColor_chain;

@property (nonatomic, readonly, copy) ChainLabelBorderWidth borderWidth_chain;

@property (nonatomic, readonly, copy) ChainLabelAttributeText attributedText_chain;

@end

