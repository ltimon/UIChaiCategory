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

- (ChainLabelBackgroundColor)backgroundColor_chain {
    return ^(UIColor *backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}

- (ChainLabelFrame)frame_chain {
    ChainLabelFrame frameBlock = ChainLabelFrame(frame) {
        self.frame = frame;
        return self;
    };
    return frameBlock;
}

- (ChainLabelSuperView)superView_chain {
    ChainLabelSuperView superViewBlock = ChainLabelSuperView(superView) {
        [superView addSubview:self];
        return self;
    };
    return superViewBlock;
}

- (ChainLabelText)text_chain {
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (ChainLabelTextColor)textColor_chain {
    ChainLabelTextColor textColorBlock = ChainLabelTextColor(textColor){
        self.textColor = textColor;
        return self;
    };
    return textColorBlock;
}

- (ChainLabelFont)font_chain {
    ChainLabelFont fontBlock = ChainLabelFont(font){
        self.font = font;
        return self;
    };
    return fontBlock;
}

- (ChainLabelTextAlignment)textAlignment_chain {
    ChainLabelTextAlignment textAlignmentBlock = ChainLabelTextAlignment(textAlignment) {
        self.textAlignment = textAlignment;
        return self;
    };
    return textAlignmentBlock;
}

- (ChainLabelCornerRadius)cornerRadius_chain {
    ChainLabelCornerRadius cornerRadiusBlock = ChainLabelCornerRadius(cornerRadius) {
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
    return cornerRadiusBlock;
}

- (ChainLabelMasksToBounds)masksToBounds_chain {
    ChainLabelMasksToBounds masksToBoundsBlock = ChainLabelMasksToBounds(masksToBounds) {
        self.layer.masksToBounds = masksToBounds;
        return self;
    };
    return masksToBoundsBlock;
}

- (ChainLabelHidden)hidden_chain {
    ChainLabelHidden hiddenBlock = ChainLabelHidden(hidden){
        self.hidden = hidden;
        return self;
    };
    return hiddenBlock;
}

- (ChainLabelBorderWidth)borderWidth_chain {
    ChainLabelBorderWidth borderWidthBlock = ChainLabelBorderWidth(borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
    return borderWidthBlock;
}

- (ChainLabelBorderColor)borderColor_chain {
    ChainLabelBorderColor borderColorBlock = ChainLabelBorderColor(color){
        self.layer.borderColor = color.CGColor;
        return self;
    };
    return borderColorBlock;
}

- (ChainLabelAttributeText)attributedText_chain {
    ChainLabelAttributeText attributedTextBlock = ChainLabelAttributeText(attributedText) {
        self.attributedText = attributedText;
        return self;
    };
    return attributedTextBlock;
}

@end
