//
//  AppDelegate.m
//  ReusableViewDemo
//
//  Created by Jeff Kloosterman on 6/23/15.
//  Copyright (c) 2015 Jeff Kloosterman. All rights reserved.
//

#import "AppDelegate.h"
#import "MLViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    MLViewController *view = [MLViewController new];
    view.navigationItem.title = @"Play Buttons";

    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:view];

    NSDictionary *navbarTitleTextAttributes = @{
        NSForegroundColorAttributeName : [UIColor whiteColor],
    };

    nav.navigationBar.barTintColor = [UIColor greenColor];
    nav.navigationBar.titleTextAttributes = navbarTitleTextAttributes;

    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
