//
//  TTLabel.h
//  UICategoryTest
//
//  Created by 李曈 on 2019/6/4.
//  Copyright © 2019 李曈. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class TTLabel;

typedef TTLabel * (^TTText)(NSString *text);
#define TTText(text) ^TTLabel * (NSString *text)

typedef TTLabel * (^TTTextColor) (UIColor *textColor);
#define TTTextColor(textColor) ^TTLabel * (UIColor *textColor)

typedef TTLabel * (^TTFont) (UIFont *font);
#define TTFont(font) ^TTLabel * (UIFont *font)

typedef TTLabel * (^TTFrame)(CGRect frame);
#define TTFrame(frame) ^TTLabel * (CGRect frame)

typedef TTLabel * (^TTSuperView)(UIView *superView);
#define TTSuperView(superView) ^TTLabel * (UIView *superView)

typedef TTLabel * (^TTTextAlignment)(NSTextAlignment textAlignment);
#define TTTextAlignment(textAlignment) ^TTLabel * (NSTextAlignment textAlignment)

NS_ASSUME_NONNULL_BEGIN

@interface TTLabel : NSObject

@property (nonatomic, strong) UILabel *label;

@property (nonatomic, readonly, copy) TTFrame frame;

@property (nonatomic, readonly, copy) TTText text;

@property (nonatomic, readonly, copy) TTTextColor textColor;

@property (nonatomic, readonly, copy) TTSuperView superView;

@property (nonatomic, readonly, copy) TTTextAlignment textAlignment;

@property (nonatomic, readonly, copy) TTFont font;


@end

NS_ASSUME_NONNULL_END
