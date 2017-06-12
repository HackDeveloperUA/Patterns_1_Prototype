//
//  Person.m
//  Patterns_1_Prototype
//
//  Created by Uber on 12/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype) copyWithZone:(NSZone *)zone {
    
    Person* copy   = [[self class] allocWithZone:zone];
    copy.firstName = self.firstName;
    copy.lastName  = self.lastName;
    copy.age       = self.age;
    
    return copy;
}

- (instancetype)initWithName:(NSString*) fName andLastName:(NSString*) lName age:(NSString*) age
{
    self = [super init];
    if (self) {
        self.firstName = fName;
        self.lastName  = lName;
        self.age       = age;
    }
    return self;
}

- (NSString*) description {
    
    return [NSString stringWithFormat:@"Name: %@, Surname: %@, Age: %@",self.firstName, self.lastName, self.age];
}
@end
