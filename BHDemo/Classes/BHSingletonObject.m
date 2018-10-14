//
//  BHSingletonObject.m
//  BHDemo
//
//  Created by QiaoBaHui on 2018/10/14.
//  Copyright © 2018 QiaoBaHui. All rights reserved.
//

#import "BHSingletonObject.h"

@implementation BHSingletonObject

static dispatch_once_t onceToken = 0;
static BHSingletonObject *singletonObject = nil;

+ (instancetype)sharedInstance {
	/*dispatch_once主要是根据onceToken的值来决定怎么去执行代码。
	 当onceToken = 0 时，线程执行block中代码 (表示: 从未执行过)
	 当onceToken = -1 时，线程跳过block中代码不执行 (表示: 已经执行过一次)
	 当onceToken = 其他值 时，线程被线程被阻塞，等待onceToken值改变 (多线程中可见)
	 */
	dispatch_once(&onceToken, ^{
		singletonObject = [[BHSingletonObject alloc] init];
	});

	return singletonObject;
}

+ (void)deallocInstance {
	onceToken = 0;
	singletonObject = nil;
}

@end
