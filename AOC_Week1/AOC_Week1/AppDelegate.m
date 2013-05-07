//
//  AppDelegate.m
//  AOC_Week1
//
//  Created by Robert Smith on 5/6/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
//******************Start Week One Project**********************
    
    //Casting a float into an int
    float castingExample = 79.4;
    NSLog(@"castingExample=%.2f", castingExample);
    NSLog(@"castingExample=%d", (int)castingExample);
    //End Casting Example
    
    //AND OR Comparison
    BOOL ipadInStock = YES;
    BOOL nexusInStock = NO;
    int myMoney = 350;
    float ipadPrice = 329.00;
    float nexusPrice = 200.00;
    
    if ((ipadInStock == YES) && (myMoney >= ipadPrice)) {
        NSLog(@"iPad Mini is MINE!!");
    }
    
    if ((nexusInStock == NO) || (myMoney >= nexusPrice)) {
        NSLog(@"I Wanted the iPad anyway....");
    }
    //End AND OR Comparison
    
    //If, Else if, Else
    int money = 100;
    int costOfIpad = 320;
    int costOfNexus7 = 200;
    
    if (money > costOfIpad) {
        NSLog(@"iPad Mini is MINE!!!");
    }else if (money > costOfNexus7){
        NSLog(@"Nexus 7 for me!!!");
    }else {
        NSLog(@"No new toy for me....boo");
    }
    //End If, Else if, Else
    
    //For Loop
    for (int savings=0; savings <= 320; savings+=40){
        NSLog(@"Saving up for the iPad Mini, currently have %d dollars in savings", savings);
}
        NSLog(@"I've saved enough, time to visit the apple store!!");
    //End For loop
    
    //Nested For Loop
    for (int iPadMini=0; iPadMini < 1; iPadMini++) {
        for (int money=320; money > 0; money-=320);
        NSLog(@"Money gone, iPad Mini in hands!!!");
    }    
    
    //While Loop
    int gigs = 16;
    while (gigs > 0) {
        NSLog(@"Still have %d gigs of storage left on my new iPad Mini!!", gigs);
        gigs-=2;
    }
    NSLog(@"Out of storage, should have saved more for the 32 gig model!!!");
    
    
    
    
    
    

    
    
    
    
    
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

@end






