//
//  NSObject+Additional.m
//  CategoryTest
//
//  Created by shanWu on 15/10/16.
//  Copyright © 2015年 caozhenwei. All rights reserved.
//

#import "NSObject+Additional.h"
#import <objc/runtime.h>

static void *strKey = &strKey;

@implementation NSObject (Additional)

- (void)sayHello {
    NSLog(@"hello");
}

+ (void)sayWorld {
    NSLog(@"world");
}

- (void)setCloudColor:(NSString *)cloudColor {
    objc_setAssociatedObject(self, &strKey, cloudColor, OBJC_ASSOCIATION_COPY);
}

- (NSString *)cloudColor {
    return objc_getAssociatedObject(self, &strKey);
}

@end
