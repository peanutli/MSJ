//
//  LDCTabBarControllerManger.m
//  MeiShiJie
//
//  Created by 花生 on 16/3/30.
//  Copyright © 2016年 花生. All rights reserved.
//

#import "LDCTabBarControllerManger.h"
#import "RecommendViewController.h"
#import "DiscoverViewController.h"
#import "ShoppingViewController.h"
#import "FoodChatViewController.h"
#import "UserViewController.h"
#import "LDCNavigationController.h"

@implementation LDCTabBarControllerManger

- (instancetype)init {
    self = [super init];
    if(!self) return nil;
    return self;
}

- (LDCTabBarController *)tabBarController {
    if (_tabBarController == nil) {
        RecommendViewController * vc1 = [[RecommendViewController alloc]init];
        LDCNavigationController * nv1 = [[LDCNavigationController alloc]initWithRootViewController:vc1];
        DiscoverViewController  * vc2 = [[DiscoverViewController alloc]init];
        LDCNavigationController * nv2 = [[LDCNavigationController alloc]initWithRootViewController:vc2];
        ShoppingViewController  * vc3 = [[ShoppingViewController alloc]init];
        LDCNavigationController * nv3 = [[LDCNavigationController alloc]initWithRootViewController:vc3];
//        FoodChatViewController  * vc4 = [[FoodChatViewController alloc]init];
//        LDCNavigationController * nv4 = [[LDCNavigationController alloc]initWithRootViewController:vc4];
//        UserViewController      * vc5 = [[UserViewController alloc]init];
//        LDCNavigationController * nv5 = [[LDCNavigationController alloc]initWithRootViewController:vc5];
        
        LDCTabBarController * tabBarController = [[LDCTabBarController alloc]init];
        [self setTabBarItemAttributesForTabBarController:tabBarController];
       // [tabBarController setViewControllers:@[nv1,nv2,nv3,nv4,nv5]];
        [tabBarController setViewControllers:@[nv1,nv2,nv3]];
         _tabBarController = tabBarController;
        _tabBarController.selectedIndex = 0;
        [self customTabBarAppearance:_tabBarController];
        
    }
    return _tabBarController;
}

- (void)setTabBarItemAttributesForTabBarController:(LDCTabBarController *)tabBarController{
    NSDictionary * dic1 = @{
                            tabBarTitle : @"推荐",
                            tabBarImage : @"",
                            tabBarSelectedImage : @"",
                            };
    NSDictionary * dic2 = @{
                            tabBarTitle : @"发现",
                            tabBarImage : @"",
                            tabBarSelectedImage : @"",
                            };
    NSDictionary * dic3 = @{
                            tabBarTitle : @"商城",
                            tabBarImage : @"",
                            tabBarSelectedImage : @"",
                            };
//    NSDictionary * dic4 = @{
//                            tabBarTitle : @"食话",
//                            tabBarImage : @"",
//                            tabBarSelectedImage : @"",
//                            };
//    NSDictionary * dic5 = @{
//                            tabBarTitle : @"我的",
//                            tabBarImage : @"",
//                            tabBarSelectedImage : @"",
//                            };
   // NSArray * array = @[dic1,dic2,dic3,dic4,dic5];
    NSArray * array = @[dic1,dic2,dic3];
    tabBarController.tabBarItemAttributes = array;
    
}

- (void)customTabBarAppearance:(UITabBarController * )tabBarController{
    NSMutableDictionary * normalAttr = [NSMutableDictionary dictionary];
    normalAttr[NSForegroundColorAttributeName] = [UIColor grayColor];
    NSMutableDictionary * selectedAttr = [NSMutableDictionary dictionary];
    selectedAttr[NSForegroundColorAttributeName] = [UIColor redColor];
    UITabBarItem * tabBar = [UITabBarItem appearance];
    [tabBar setTitleTextAttributes:normalAttr forState:UIControlStateNormal];
    [tabBar setTitleTextAttributes:selectedAttr forState:UIControlStateSelected];
}

@end
