//
//  TTLabel.m
//  UICategoryTest
//
//  Created by 李曈 on 2019/6/4.
//  Copyright © 2019 李曈. All rights reserved.
//

#import "TTLabel.h"

@interface TTLabel() {
    
}



@end

@implementation TTLabel

- (instancetype)init {
    self = [super init];
    if (self) {
        self.label = [[UILabel alloc] init];
    }
    return self;
}

- (TTFrame)frame {
    TTFrame frameBlock = TTFrame(frame) {
        self.label.frame = frame;
        return self;
    };
    return frameBlock;
}

- (TTSuperView)superView {
    TTSuperView superViewBlock = TTSuperView(superView) {
        [superView addSubview:self.label];
        return self;
    };
    return superViewBlock;
}

- (TTText)text {
    return ^(NSString *text){
        self.label.text = text;
        return self;
    };
}

- (TTTextColor)textColor {
    return ^(UIColor *textColor){
        self.label.textColor = textColor;
        return self;
    };
}

- (TTFont)font {
    return ^(UIFont *font){
        self.label.font = font;
        return self;
    };
}

- (TTTextAlignment)textAlignment {
    return ^(NSTextAlignment textAlignment){
        self.label.textAlignment = textAlignment;
        return self;
    };
}

@end
