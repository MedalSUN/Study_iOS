//
//  main.m
//  OC_base_property
//
//  Created by SunDL on 2019/7/25.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //属性修饰符
     /*
      几种常用的属性修饰符
      1:atomic// 默认是atomic 原子性：访问属性即写属性的时候会加锁，为了防止多线程时同时访问属性造成错误// 但是原子性会每一次都有加锁和释放锁的过程，非常消耗性能
      2:nonatomic//非原子性，开发中常使用，因为大多情况下不会多线程访问一个对象中的属性
      3:assign// 修饰基本数据类型的
      4:strong // 修饰对象，且是强引用
      5:weak // 修饰对象 是弱引用
      6:copy // copy是将原内容复制一份，默认是存储在栈上的，拷贝是放在堆上的，因此他是不会被释放的。 多用于NSString
      7:readwrite// 默认情况下是readwrite 表示可读可写
      8:readonly// 只读的例如一些常量PI
      
      @property(原子性/非原子性，属性修饰23456，读写权限) 属性类型 属性名；
      
      */
        
        // 属性的本质
        
        // 目前使用的属性定义方法的操作
//        Person *p = [[Person alloc] init];
//        p.name = @"kaka";
//        NSLog(@"这个人的名字为： %@", p.name);
        
        
        // 使用老的方法去setget属性操作
        Person *p = [[Person alloc] init];
        [p setName:@"Jack"];
        NSLog(@"这个人的名字为： %@", [p name]);
        
        
        /*
         综上所述：
         属性就是get set方法的合成
         一个
         @property(nonatomic,copy)NSString *name;
         相当于
         
         NSString *_name;
         -(void)setName:(NSString *)name;
         
         -(NSString *)name;
         */
        
        
        // getter的用法。 实际开发中需要
        // 在前面定义的getter = isBoy会自动获取到属性的赋值，在这里直接调用getter进行获取
        // 做一个了解，遇见的时候要明白是什么意思
        p.boy = YES;
        BOOL isBoy = p.isBoy;
        
        
    }
    return 0;
}
