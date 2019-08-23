//
//  main.m
//  OC_base_block
//
//  Created by SunDL on 2019/8/23.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /*
          block的定义，开头使用typedef关键字进行定义block，就可以在其他的地方进行调用
         而不用整体的使用。
         <returnType>(^blockName)(list of arguments) = ^(arguments){ body; };
         
         */
        
        
        
        typedef double (^blockTest)(void);
        
        double a = 10, b = 20;
        /*
         未使用static修饰的变量，称为本地变量
         block会在定义时复制并保存他们的状态，因为这个原因，y即使后面再对ab重新赋值，他也会保持原有的值。
         */
        
        // static double a = 10, b = 20;
        
        blockTest multiply = ^(void){ return a * b;};
        NSLog(@"result1 is : %f",multiply());
        a = 20;
        b = 50;
        
        
        NSLog(@"result2 is: %f",multiply());
        
        /*
         使用static进行修饰之后 a，b变成全局变量，
         */
        
        
        
        
        
        // 2:block中的参数变量与函数中的参数变量具有相同的作用
        typedef double (^blockTest2)(double argu1, double argu2);
        
        blockTest2 function2 = ^(double argu1, double argu2){
            return argu1 * argu2;
        };
        
        NSLog(@"result is : %f", function2(4,3));
        
        
        
        
        
        // 3: __block 变量
        
        /*
         如果c不实用__block声明，那么变量c会被当成本地变量获取到，并且会被锁定，不能进行更改
         报错：Variable is not assignable (missing __block type specifier)
         
         */
        
        __block double c = 3;
        typedef void (^blockTest3)(double a1, double a2);
        blockTest3 function3 = ^(double a1, double a2){
            c = a1 * a2;
        };
        /*
         无法被声明为：__blockl类型的两种情况
         1: 无长度可变的数组
         2: 没有包含可变长度数组的结构体
         */
        
        
        
        // 4: block内部的变量
        // block内部的变量和本地变量具有相同的作用
        typedef double (^blockTest4) (void);
        blockTest4 function4 = ^(void){
            double a1 = 10;
            double a2 = 12;
            return a1 * a2;
        };
        
        NSLog(@"block内部变量调用: %f", function4());
        
        
        
        
    }
    return 0;
}
