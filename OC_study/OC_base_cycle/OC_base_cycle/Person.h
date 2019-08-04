//
//  Person.h
//  OC_base_cycle
//
//  Created by SunDL on 2019/8/4.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>

//#import "Dog.h"

 @class Dog;

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property(nonatomic, copy) NSString *name;
@property(nonatomic, strong) Dog *dog;






@end

NS_ASSUME_NONNULL_END
