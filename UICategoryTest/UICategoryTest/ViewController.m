//
//  ViewController.m
//  UICategoryTest
//
//  Created by 李曈 on 2019/6/4.
//  Copyright © 2019 李曈. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "UILabel+Chain.h"
#import "UIButton+Chain.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 220, 100, 30);
    [button addTarget:self action:@selector(jump) forControlEvents:1<<6];
    button.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:button];
    button.title_state_chain(@"哈哈", UIControlStateNormal).backgroundColor_chain([UIColor cyanColor]);
    
    UILabel *nlabel = [[UILabel alloc] init];
    nlabel.text_chain(@"category").backgroundColor_chain([UIColor whiteColor]).font_chain([UIFont systemFontOfSize:20]).textAlignment_chain(NSTextAlignmentCenter).superView_chain(self.view).frame_chain(CGRectMake(100, 160, 200, 50)).cornerRadius_chain(5.0f).masksToBounds_chain(YES).borderColor_chain([UIColor redColor]).borderWidth_chain(2.0).attributedText_chain([[NSAttributedString alloc] initWithString:@"123"]);
}

- (void)jump {
    SecondViewController *vc = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
