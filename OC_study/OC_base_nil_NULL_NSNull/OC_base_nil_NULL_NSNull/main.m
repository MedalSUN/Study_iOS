//
//  main.m
//  OC_base_nil_NULL_NSNull
//
//  Created by SunDL on 2019/7/23.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 面试重点。nil NULL NSNull
        
        
        /*
         一： nil======（空对象）不曾存在过
         理解不存在实际上是一个哲学问题，如何用存在的东西去表示不存在才是重要
         1:nil被视为空对象，表示从内存中完全的消失（堆栈内存）
         
         ===
         Nil
          使用Nil在一些情况下可以代替nil，但是通常使用Nil来代替空类。
         
         
         
         */
        
        NSArray *arr;
        arr = [NSArray array];
        
        /*
         上述两行代码的含义是：
         1:声明变量arr，在栈中开辟空间，这个变量存储的是一个指向堆的地址，但是此时堆中还没有开辟空间，
            因此使用存在的东西去表示不存在的东西，就使用nil来代表这个空对象，这个完全从内存中消失的对象
         2:当使用[NSArray array];开辟空间后他会形成一个地址，此时arr变量存储的就是这个地址。
         3:如果使用 arr = nil 就代表是系统将这个内存完全的释放掉
         4:注意NSArray NSDictionary中的元素一定不能为nil，否则会报错
         */
        
        
        // 二： NSNull ===== 值为空的对象。 你消失掉了，但是空气中还存在你的香味，告诉我你来过
        /*
         1: NSNull是一个类型，这个类型就相当于是一个数据类型，NSArray，等
         2: NSNull是一个值为空的对象
         3: NSArray和NSDictionary是不允许有nil的，但是可以使用NSNull进行代替
         4: 实际开发中后端传给前端的数据有可能是空的，此时在oc中必须要将其转换成NSNull使用，否则他会出错！！！
    
   
         */
        
        NSNull *instanceNull = [NSNull null]; // NSNull作为一个类型，使用【NSNull null】他会返回一个空的实例
        
        
        // 三 NULL
        /*
         NULL其实是c语言中的，相当于是oc中的nil
         
         */
        int *point = NULL;
        // NSInteger p = NULL;
        
        
    }
    return 0;
}
