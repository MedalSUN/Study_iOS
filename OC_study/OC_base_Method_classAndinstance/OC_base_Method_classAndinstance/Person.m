//
//  Person.m
//  OC_base_Method_classAndinstance
//
//  Created by SunDL on 2019/8/4.
//  Copyright © 2019 FZF. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)runing{
    NSLog(@"I am runing");
}

+(void)eating{
    NSLog(@"Person is eating");
    [self sleeping];
}


+(void)sleeping{
    NSLog(@"Person is sleping");
}

@end
