//
//  main.m
//  OC_base_cycle
//
//  Created by SunDL on 2019/8/4.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"
#import "Dog.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        /*
            循环引用
         
         
         1:前提条件：：Person中引用Dog，Dog中引用Person这就是循环引用
         但是同样使用#import是会报错的，因此需要使用@class代替。
         @class只会进行声明，不会像import一样将所有的东西加载进来，
         因此使用@class需要在.m文件中再#import一次才可以使用相应的类
         2:造成原因：：在两者相互引用的同时，属性是强类型即
         @property(nonatomic, strong) Person *person;
         @property(nonatomic, strong) Dog *dog;
         两者都是强类型，就会造成内存无法释放，就会形成循环引用，从而导致内存泄漏。
         
         解决办法就是将循环引用的其中一个环节的强类型，转换为弱类型 weak即可。
         
         */
        
        Person *p = [[Person alloc] init];
        Dog *d = [[Dog alloc]init];
        
        p.name = @"Jack";
        p.dog = d;
        
        d.name = @"旺财";
        d.person = p;
        
        
        
        
        
    }
    return 0;
}
