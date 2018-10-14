//
//  BHExampleViewController.m
//  BHDemo
//
//  Created by QiaoBaHui on 2018/9/18.
//  Copyright © 2018年 QiaoBaHui. All rights reserved.
//

#import "BHExampleViewController.h"
#import "BHSingletonObject.h"

@interface BHExampleViewController ()

@end

static NSString *const DEMO_VIEWS_STORYBOARD_NAME = @"DemoViews";


@implementation BHExampleViewController

+ (instancetype)create {
  UIStoryboard *demoViewsStoryboard = [UIStoryboard storyboardWithName:DEMO_VIEWS_STORYBOARD_NAME bundle:nil];
  return [demoViewsStoryboard instantiateViewControllerWithIdentifier:NSStringFromClass([BHExampleViewController class])];
}

#pragma mark - ViewController LifeCycle

- (void)viewDidLoad {
  [super viewDidLoad];

	// 创建一个单例的实例对象
	BHSingletonObject *singletonObject1 = [BHSingletonObject sharedInstance];
	NSLog(@"%@", singletonObject1); // 输出: <BHSingletonObject: 0x600001647160>

	// 销毁实例
	[BHSingletonObject deallocInstance];

	// 再次创建一个单例的实例对象
	BHSingletonObject *singletonObject2 = [BHSingletonObject sharedInstance];
	NSLog(@"%@", singletonObject2); // 输出: <BHSingletonObject: 0x600001647160>
}

@end
