//
//  User.h
//  ConstructorCallsSetter
//
//  Created by Konstantin Portnov on 10/18/17.
//  Copyright © 2017 Konstantin Portnov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (copy, nonatomic) NSString *name;

- (instancetype)initWithName:(NSString *)name;

@end
