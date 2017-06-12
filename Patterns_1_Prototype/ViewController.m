//
//  ViewController.m
//  Patterns_1_Prototype
//
//  Created by Uber on 12/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Поверхностное копирование // shallow copy
    NSLog(@"Поверхностное копирование // shallow copy\n\n");
    
            Person* firstPerson = [[Person alloc] initWithName:@"Roma" andLastName:@"Lesov" age:@"30"];
            Person* secondPerson = firstPerson;
            
            NSLog(@"firstPerson  = %@",firstPerson.description);
            NSLog(@"secondPerson = %@",secondPerson.description);
            
             //-- Теперь меняем у первого объекта имя
             firstPerson.firstName = @"Igor";
            
            NSLog(@"firstPerson  = %@",firstPerson.description);
            NSLog(@"secondPerson = %@\n\n",secondPerson.description);
    
    
    //------------------------------------------------------------//
    
    // Глубокое копирование // Deep copy
    NSLog(@"Глубокое копирование // Deep copy\n\n");
    
        firstPerson = [[Person alloc] initWithName:@"Alex" andLastName:@"Skutarenko" age:@"30"];
        secondPerson = firstPerson.copy;
    
        //-- Теперь поменяем что0-нибудь у второго
        secondPerson.firstName = @"Steve";
        secondPerson.lastName = @"Jobs";
        secondPerson.age = @"56";

        NSLog(@"firstPerson  = %@",firstPerson.description);
        NSLog(@"secondPerson = %@",secondPerson.description);
    
}




@end
