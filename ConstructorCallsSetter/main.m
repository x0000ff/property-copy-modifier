//
//  main.m
//  ConstructorCallsSetter
//
//  Created by Konstantin Portnov on 10/18/17.
//  Copyright © 2017 Konstantin Portnov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSString *stringName = @"John";
        NSMutableString *mutableStringName = [NSMutableString stringWithString:@"John"];
        
        User *userWithNonmutable = [[User alloc] initWithName:stringName];
        User *userWithMutable = [[User alloc] initWithName:mutableStringName];

        NSLog(@"Nonmutable variable: %@;   Pointer: %p", stringName, stringName);
        NSLog(@"Mutable  variable  : %@;   Pointer: %p", mutableStringName, mutableStringName);

        NSLog(@"");
        
        NSLog(@"Nonmutable before  : %@;   Pointer: %p", userWithNonmutable.name, userWithNonmutable.name);
        NSLog(@"Mutable before     : %@;   Pointer: %p", userWithMutable.name, userWithMutable.name);

        NSLog(@"");

        NSString *newName = @"Steeve";
        NSLog(@"Change each var from \"%@\" to \"%@\"\n", stringName, newName);
        
        stringName = newName;
        // I don't want "mutableStringName" to change the pointer
        [mutableStringName replaceOccurrencesOfString:mutableStringName
                                           withString:newName
                                              options:NSCaseInsensitiveSearch
                                                range:NSMakeRange(0, mutableStringName.length)];

        NSLog(@"");

        NSLog(@"Nonmutable after   : %@;   Pointer: %p", userWithNonmutable.name, userWithNonmutable.name);
        NSLog(@"Mutable after      : %@; Pointer: %p    // <-- Value's changed!", userWithMutable.name, userWithMutable.name);
    }
    
    return 0;
}
