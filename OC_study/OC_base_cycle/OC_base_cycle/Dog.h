//
//  Dog.h
//  OC_base_cycle
//
//  Created by SunDL on 2019/8/4.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>




// #import "Person.h"

@class Person;

NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject


@property(nonatomic, copy) NSString *name;
@property(nonatomic, weak) Person *person;



@end

NS_ASSUME_NONNULL_END
