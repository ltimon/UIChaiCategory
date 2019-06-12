//
//  UIButton+Chain.m
//  UICategoryTest
//
//  Created by 李曈 on 2019/6/11.
//  Copyright © 2019 李曈. All rights reserved.
//

#import "UIButton+Chain.h"

@implementation UIButton (Chain)

- (ChainButtonBackgroundColor)backgroundColor_chain {
    ChainButtonBackgroundColor backgroundColorChain = ChainButtonBackgroundColor(backgroundColor){
        [self setBackgroundColor:backgroundColor];
        return self;
    };
    return backgroundColorChain;
}

- (ChainButtonTitle)title_chain {
    ChainButtonTitle titleBlock = ChainButtonTitle(title) {
        [self setTitle:title forState:UIControlStateNormal];
        return self;
    };
    return titleBlock;
}

- (ChainButtonTitleAState)title_state_chain {
    ChainButtonTitleAState titleAState = ChainButtonTitleAState(title, controlState) {
        [self setTitle:title forState:controlState];
        return self;
    };
    return titleAState;
}

@end
