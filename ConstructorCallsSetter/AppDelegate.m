//
//  AppDelegate.m
//  ConstructorCallsSetter
//
//  Created by Konstantin Portnov on 10/18/17.
//  Copyright © 2017 Konstantin Portnov. All rights reserved.
//

#import "AppDelegate.h"

#import "User.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    NSString *stringName = @"John";
    NSMutableString *mutableStringName = [NSMutableString stringWithString:@"John"];
    
    User *userWithNonmutable = [[User alloc] initWithName:stringName];
    User *userWithMutable = [[User alloc] initWithName:mutableStringName];
    
    NSLog(@"Nonmutable before: %@", userWithNonmutable.name);
    NSLog(@"Mutable before   : %@", userWithMutable.name);

    NSString *newName = @"Steeve";
    NSLog(@"Change each var from \"%@\" to \"%@\"", stringName, newName);

    stringName = newName;
    mutableStringName = newName;
    
    NSLog(@"Nonmutable after: %@", userWithNonmutable.name);
    NSLog(@"Mutable after   : %@", userWithMutable.name);

    return YES;
}

@end
