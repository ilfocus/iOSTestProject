//
//  main.m
//  iOSTestProject
//
//  Created by WangQi on 2019/9/30.
//  Copyright © 2019 $(PRODUCT_NAME). All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

__attribute__((constructor(101)))
void beforeFuntion101() {
	NSLog(@"Before function101");
}
__attribute__((constructor(102)))
void beforeFuntion102() {
	NSLog(@"Before function102");
}
__attribute__((constructor(103)))
void beforeFuntion103() {
	NSLog(@"Before function103");
}
int main(int argc, char * argv[]) {
	NSString * appDelegateClassName;
	@autoreleasepool {
		NSLog(@"main function");
	    // Setup code that might create autoreleased objects goes here.
	    appDelegateClassName = NSStringFromClass([AppDelegate class]);
	}
	return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
