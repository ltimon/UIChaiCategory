//
//  UIButton+Chain.h
//  UICategoryTest
//
//  Created by 李曈 on 2019/6/11.
//  Copyright © 2019 李曈. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef UIButton * (^ChainButtonBackgroundColor)(UIColor *backgroundColor);
#define ChainButtonBackgroundColor(backgroundColor) ^UIButton * (UIColor *backgroundColor)

typedef UIButton * (^ChainButtonTitle)(NSString *title);
#define ChainButtonTitle(title) ^UIButton * (NSString *title)

typedef UIButton * (^ChainButtonTitleAState)(NSString *title, UIControlState controlState);
#define ChainButtonTitleAState(title,controlState) ^UIButton * (NSString *title, UIControlState controlState)

typedef UIButton * (^ChainButtonTargetselector)(id target,SEL selector, UIControlEvents controlEvents);
#define ChainButtonTargetselector(target,selector,controlEvents) ^UIButton * (id target,SEL selector, UIControlEvents controlEvents)

@interface UIButton (Chain)

@property (nonatomic, readonly, copy) ChainButtonBackgroundColor backgroundColor_chain;

@property (nonatomic, readonly, copy) ChainButtonTitle title_chain;

@property (nonatomic, readonly, copy) ChainButtonTitleAState title_state_chain;

@end
