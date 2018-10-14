//
//  BHSingletonObject.h
//  BHDemo
//
//  Created by QiaoBaHui on 2018/10/14.
//  Copyright © 2018 QiaoBaHui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BHSingletonObject : NSObject

// 创建单例
+ (instancetype)sharedInstance;

// 销毁单例 
+ (void)deallocInstance;

@end
