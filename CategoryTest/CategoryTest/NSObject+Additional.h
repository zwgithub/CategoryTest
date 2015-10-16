//
//  NSObject+Additional.h
//  CategoryTest
//
//  Created by shanWu on 15/10/16.
//  Copyright © 2015年 caozhenwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Additional)

@property (nonatomic, strong) NSString *cloudColor;

- (void)sayHello;
+ (void)sayWorld;

@end
