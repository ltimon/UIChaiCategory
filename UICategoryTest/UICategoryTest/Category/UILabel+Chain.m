//
//  UILabel+Chain.m
//  UICategoryTest
//
//  Created by 李曈 on 2019/6/6.
//  Copyright © 2019 李曈. All rights reserved.
//

#import "UILabel+Chain.h"
#import <objc/runtime.h>

@implementation UILabel (Chain)

- (ChainBackgroundColor)backgroundColor_chain {
    return ^(UIColor *backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}

- (ChainFrame)frame_chain {
    ChainFrame frameBlock = ChainFrame(frame) {
        self.frame = frame;
        return self;
    };
    return frameBlock;
}

- (ChainSuperView)superView_chain {
    ChainSuperView superViewBlock = ChainSuperView(superView) {
        [superView addSubview:self];
        return self;
    };
    return superViewBlock;
}

- (ChainText)text_chain {
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (ChainTextColor)textColor_chain {
    ChainTextColor textColorBlock = ChainTextColor(textColor){
        self.textColor = textColor;
        return self;
    };
    return textColorBlock;
}

- (ChainFont)font_chain {
    ChainFont fontBlock = ChainFont(font){
        self.font = font;
        return self;
    };
    return fontBlock;
}

- (ChainTextAlignment)textAlignment_chain {
    ChainTextAlignment textAlignmentBlock = ChainTextAlignment(textAlignment) {
        self.textAlignment = textAlignment;
        return self;
    };
    return textAlignmentBlock;
}

- (ChainCornerRadius)cornerRadius_chain {
    ChainCornerRadius cornerRadiusBlock = ChainCornerRadius(cornerRadius) {
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
    return cornerRadiusBlock;
}

- (ChainMasksToBounds)masksToBounds_chain {
    ChainMasksToBounds masksToBoundsBlock = ChainMasksToBounds(masksToBounds) {
        self.layer.masksToBounds = masksToBounds;
        return self;
    };
    return masksToBoundsBlock;
}

- (ChainHidden)hidden_chain {
    ChainHidden hiddenBlock = ChainHidden(hidden){
        self.hidden = hidden;
        return self;
    };
    return hiddenBlock;
}

- (ChainBorderWidth)borderWidth_chain {
    ChainBorderWidth borderWidthBlock = ChainBorderWidth(borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
    return borderWidthBlock;
}

- (ChainBorderColor)borderColor_chain {
    ChainBorderColor borderColorBlock = ChainBorderColor(color){
        self.layer.borderColor = color.CGColor;
        return self;
    };
    return borderColorBlock;
}

@end
