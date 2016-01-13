//
//  AppDelegate.m
//  StoryBoard使用
//
//  Created by Newsee on 16/1/4.
//  Copyright © 2016年 Newsee. All rights reserved.
//

#import "AppDelegate.h"
#import "PlayersViewController.h"
#import "Player.h"

@interface AppDelegate ()

@end

@implementation AppDelegate {
    NSMutableArray *players;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    players = [NSMutableArray arrayWithCapacity:10];
    
    Player *player = [[Player alloc] init];
    player.name = @"Mina";
    player.game = @"LOL";
    player.rating = 2;
    [players addObject:player];
    
    player = [[Player alloc] init];
    player.name = @"Is";
    player.game = @"LOL";
    player.rating = 4;
    [players addObject:player];
    
    player = [[Player alloc] init];
    player.name = @"Stray";
    player.game = @"LOL";
    player.rating = 1;
    [players addObject:player];
    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    UINavigationController *navigationController = [[tabBarController viewControllers] objectAtIndex:0];
    PlayersViewController *playerController = [[navigationController viewControllers] objectAtIndex:0];
    
    playerController.players = players;
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
