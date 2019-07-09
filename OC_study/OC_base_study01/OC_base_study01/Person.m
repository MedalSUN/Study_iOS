//
//  Person.m
//  OC_base_study01
//
//  Created by FZF on 2019/7/9.
//  Copyright © 2019 FZF. All rights reserved.
//

/*
 1: 在OC中d使用函数之前必须要先进行定义，这是沿袭了c语言的特点，在oc中你需要将函数定义在.h文件中，在.m文件中进行使用
 */


#import "Person.h"

@implementation Person
- (NSInteger)addNumber1:(NSInteger)number1 withNumber2:(NSInteger)number2 {
    return number1 + number2;
}
@end
