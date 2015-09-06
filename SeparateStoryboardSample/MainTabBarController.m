//
//  MainTabBarController.m
//  SeparateStoryboardSample
//
//  Created by Yudai Yokoyama on 2015/09/06.
//  Copyright (c) 2015年 Yudai Yokoyama. All rights reserved.
//

#import "MainTabBarController.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *viewControllers = [NSMutableArray new];
    
    UIStoryboard *firstStoryboard = [UIStoryboard storyboardWithName:@"First" bundle:[NSBundle mainBundle]];
    UIViewController *firstViewController = [firstStoryboard instantiateInitialViewController];
    [viewControllers addObject:firstViewController];
    
    UIStoryboard *secondStoryboard = [UIStoryboard storyboardWithName:@"Second" bundle:[NSBundle mainBundle]];
    UIViewController *secondViewController = [secondStoryboard instantiateInitialViewController];
    [viewControllers addObject:secondViewController];

    self.viewControllers = viewControllers;
}

@end
