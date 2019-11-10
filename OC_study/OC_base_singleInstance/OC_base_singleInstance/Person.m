//
//  Person.m
//  OC_base_singleInstance
//
//  Created by SunDL on 2019/11/10.
//  Copyright © 2019 FZF. All rights reserved.
//

#import "Person.h"

@implementation Person
//+(instancetype)sharedInstance{
////    __block Person *p = nil;
//    //使用__block去修饰，他会被回收掉，必需使用static进行修饰
//    //此时使用static进行修饰，他就可以在全局存在，只有应用程序被杀死时才会被回收掉。
//    static Person *p = nil;
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        p = [[Person alloc] init];
//    });
//    return p;
//}


//使用宏定义创建
singTypeDefine_m(Person)

@end
