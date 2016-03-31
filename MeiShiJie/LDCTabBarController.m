//
//  LDCTabBarController.m
//  MeiShiJie
//
//  Created by 花生 on 16/3/30.
//  Copyright © 2016年 花生. All rights reserved.
//

#import "LDCTabBarController.h"

@interface LDCTabBarController ()

@end

@implementation LDCTabBarController

@synthesize viewControllers = _viewControllers;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setViewControllers:(NSArray *)viewControllers{
    for (NSInteger i = 0; i<viewControllers.count; i++) {
        
        [self addChildViewController:viewControllers[i] tabBarTitle:_tabBarItemAttributes[i][tabBarTitle] tabBarImage:_tabBarItemAttributes[i][tabBarImage] selectedImage:_tabBarItemAttributes[i][tabBarSelectedImage]];
    }
}

- (void)addChildViewController:(UIViewController *)childController tabBarTitle:(NSString *)ldcTitle tabBarImage:(NSString *)ldcImage selectedImage:(NSString *)ldcSelectedImage {
    UIViewController * viewController = childController;
    viewController.tabBarItem.title = ldcTitle;
    viewController.tabBarItem.image = [UIImage imageNamed:ldcImage];
    viewController.tabBarItem.selectedImage = [UIImage imageNamed:ldcSelectedImage];
    [self addChildViewController:viewController];
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
