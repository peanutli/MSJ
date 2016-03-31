//
//  LDCTabBarController.h
//  MeiShiJie
//
//  Created by 花生 on 16/3/30.
//  Copyright © 2016年 花生. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString * tabBarTitle = @"tabBarTitle";
static NSString * tabBarImage = @"tabBarImage";
static NSString * tabBarSelectedImage = @"tabBarSelectedImage";

@interface LDCTabBarController : UITabBarController

@property (nonatomic,copy)  NSArray * viewControllers;
@property (nonatomic,strong) NSArray * tabBarItemAttributes;

@end
