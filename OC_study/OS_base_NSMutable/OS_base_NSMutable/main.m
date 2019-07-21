//
//  main.m
//  OS_base_NSMutable
//
//  Created by SunDL on 2019/7/21.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        
        /*
         可变类型和不可变类型，
         
         主要的区别便是存储上的不同
         
         
         */
        
        NSString *a = @"tom";
        a = @"jack";
        /*
         分析：
            由于NSString属于复杂类型，因此变量值是存放在堆中。NSString属于不可变类型，声明的NSString变量a在栈中声明，
         在堆中他开辟了一个区域用于存放他的内容tom。变量值只是用来存储这个地址，用于指向存储tom的区域。
         当a=jack时其实是在堆中新开辟了一个区域用于存放jack，同时将变量a在栈中存放的地址指向堆中的jack
         实则改变指向，因此称之为不可变类型。
         */
        
        NSMutableArray *arr = [NSMutableArray array];
        [arr addObject:@"kaka"];
        NSLog(@"数组1: %@", arr);
        /*
         分析：
            在栈中创建arr，在堆中使用类方法开辟区域，
         之后使用addObject进行添加对象。是直接在原来开辟的地方进行添加对象
         他并没有改变指向，因此称之为可变数组。
         
         */
        
        NSMutableArray *arr2;
        [arr2 addObject:@"Rose"];
        NSLog(@"数组2: %@", arr2); // 输出null
        
        
        NSMutableArray *arr3;
        arr3 = [[NSMutableArray alloc] init]; // 为arr3开辟堆内存区域
        [arr3 addObject:@"Rose"];
        NSLog(@"数组3: %@", arr3); // 输出Rose
        
        
        /*
         注意：
            上面的arr2与arr3描述的是可变类型的数据类型必须要在使用前进行初始化，开辟内存区域。
         否则addObject是无法实现的。
         
         
         */
        
        
    }
    return 0;
}
