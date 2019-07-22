//
//  main.m
//  OC_base_NSNumber_NSValue
//
//  Created by SunDL on 2019/7/17.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {


        // NSNumber 和 NSValue
        /*
         NSNumber包装基本数据类型
         NSValue可以包装结构体
                    注意：结构体也是属于基本数据类型。CG
         */
        
        
        /*
         1:NSNumber是继承自 NSValue的子类
         2:由于NSSArray，NSDictionary 中的值不能是基本数据类型的，因此出现NSNumber
         3:NSNumber可以将int，float，double，char，bool等基本数据类型包装成对象类型，并放在NSArray，NSDictionary中
         
         
         
         */

        // 1: 基本数据类型转换成复杂数据类型 =====装箱
        NSNumber *number = [NSNumber numberWithInt:2];
        NSArray *arr = @[number];
        
        // 转换方法有很多，可以点进去看一下它里面的方法。
        // 可以使用语法糖的形式进行包装
        NSNumber *number2 = @(2);
        NSArray *arr1 = @[number2];

        // 2:复杂数据类型转换成基本数据类型。========拆箱
        NSNumber *number3 = @(3);
        NSInteger i = [number3 intValue];
        // 有很多的方法可以进行转换，可以点进去看
        
        
        /*
         NSValue 可以包装结构体
         
         */

        // CGPoint p = CGPointMake(2, 3); // CGPoint是结构体，他是基本数据类型
        //CGPoint test = CGPointMake(1, 2);
        //NSValue *value = [NSValue valueWithPointer:test];

        NSPoint test = CGPointMake(1, 2);
        NSValue *value = [NSValue valueWithPoint:test];
        NSLog(@"value是：%@", value);
















    }
    return 0;
}
