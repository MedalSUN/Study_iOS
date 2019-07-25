//
//  Person.m
//  OC_base_property
//
//  Created by SunDL on 2019/7/25.
//  Copyright © 2019 FZF. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)setName:(NSString *)name{
    // _name = name;
    _name = [name copy]; // 在ARC情况下字符串多使用copy
}

-(NSString *)name{
    return _name;
}

@end
