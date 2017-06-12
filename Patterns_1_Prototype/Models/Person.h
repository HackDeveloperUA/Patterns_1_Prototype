//
//  Person.h
//  Patterns_1_Prototype
//
//  Created by Uber on 12/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying>


@property (nonatomic, strong) NSString* firstName;
@property (nonatomic, strong) NSString* lastName;
@property (nonatomic, strong) NSString* age;


- (instancetype) copyWithZone:(NSZone *)zone;
- (instancetype)initWithName:(NSString*) fName andLastName:(NSString*) lName age:(NSString*) age;
- (NSString*) description;
@end
