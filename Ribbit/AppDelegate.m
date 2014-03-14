//
//  AppDelegate.m
//  Ribbit
//
//  Created by Reed Sweeney on 2/19/14.
//  Copyright (c) 2014 Reed Sweeney. All rights reserved.
//

#import "AppDelegate.h"
#import <Parse/Parse.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [NSThread sleepForTimeInterval:1.5];
    
    [Parse setApplicationId:@"YU3PLfw5JnryGBJ5nbNGUDzUog4QdLFLNmBV4AHT"
                  clientKey:@"c1D8ZZneV50an3eIgnwhUZIREejG54v0Asj8qnVW"];
    
    [self customizeUserInterface];
        return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


#pragma mark - Helper Methods

- (void)customizeUserInterface {
    //Customize the nav bar
    //[[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.0 green:0.0 blue:0.153 alpha:1.0]];
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"navBarBackground"] forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], UITextAttributeTextColor, nil]];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    //Customize the tab bar
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], UITextAttributeTextColor, nil] forState:UIControlStateNormal];
    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    UITabBar *tabBar = tabBarController.tabBar;
    
    UITabBarItem *tabInbox = [tabBar.items objectAtIndex:0];
    UITabBarItem *tabFriends = [tabBar.items objectAtIndex:1];
    UITabBarItem *tabCamera = [tabBar.items objectAtIndex:2];
    
    [tabInbox setFinishedSelectedImage:[UIImage imageNamed:@"inbox"] withFinishedUnselectedImage:[UIImage imageNamed:@"inbox"]];
    [tabFriends setFinishedSelectedImage:[UIImage imageNamed:@"friends"] withFinishedUnselectedImage:[UIImage imageNamed:@"friends"]];
    [tabCamera setFinishedSelectedImage:[UIImage imageNamed:@"camera"] withFinishedUnselectedImage:[UIImage imageNamed:@"camera"]];
}

@end


















