//
//  StackViewController.m
//  iOSTestProject
//
//  Created by WangQi on 2019/10/19.
//  Copyright © 2019 $(PRODUCT_NAME). All rights reserved.
//

#import "StackViewController.h"

@interface StackViewController ()

@end

@implementation StackViewController
- (void)viewDidLoad {
    [super viewDidLoad];
	self.title = @"StackView";
	self.view.backgroundColor = [UIColor whiteColor];
	
	NSMutableArray <UIView *>*array = [NSMutableArray array];
    for (int i = 0;i < 4; i++) {
		int R = (arc4random() % 256) ;
		int G = (arc4random() % 256) ;
		int B = (arc4random() % 256) ;
		UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
		[button setBackgroundColor:[UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1]];
		[array addObject:button];
    }
	UIStackView *stackView = [[UIStackView alloc] initWithArrangedSubviews:array];
	[self.view addSubview:stackView];
	stackView.frame = CGRectMake(0, kTopHeight, kScreenWidth, 300);
	stackView.backgroundColor = [UIColor yellowColor];
	
	[stackView setAxis:(UILayoutConstraintAxisHorizontal)];
	[stackView setDistribution:(UIStackViewDistributionFillEqually)];
	[stackView setSpacing:20];
	[stackView setAlignment:UIStackViewAlignmentBottom];
//	[UIView animateWithDuration:1.3 animations:^{
//		[stackView layoutIfNeeded];
//	}];
}

@end
