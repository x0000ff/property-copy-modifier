//
//  User.m
//  ConstructorCallsSetter
//
//  Created by Konstantin Portnov on 10/18/17.
//  Copyright © 2017 Konstantin Portnov. All rights reserved.
//

#import "User.h"

@implementation User

- (instancetype)initWithName:(NSString *)name {
    
    if (self = [super init]) {
        _name = name;
    }
    
    return self;
}

@end
