//
//  AppDelegate.m
//  PopupView
//
//  Created by user on 2019/11/05.
//  Copyright © 2019 Jaehu Jeon. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    MainViewController *mainView = [[MainViewController alloc]initWithNibName:@"MainViewController" bundle:nil];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = mainView;
    return YES;
}

@end
