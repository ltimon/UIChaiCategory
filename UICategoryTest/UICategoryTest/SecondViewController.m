//
//  SecondViewController.m
//  UICategoryTest
//
//  Created by 李曈 on 2019/6/6.
//  Copyright © 2019 李曈. All rights reserved.
//

#import "SecondViewController.h"
#import "TTLabel.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)dealloc {
    NSLog(@"%s",__FUNCTION__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    TTLabel *label = [[TTLabel alloc] init];
    label.frame(CGRectMake(100, 100, 100, 30)).text(@"hello world").textColor([UIColor orangeColor]).superView(self.view);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
