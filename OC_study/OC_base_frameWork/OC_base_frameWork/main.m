//
//  main.m
//  OC_base_frameWork
//
//  Created by SunDL on 2019/11/10.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        /*
         系统框架的学习
         框架：封装了一些列的代码，并且将头文件暴露，供外界调用这些头文件。
              这就是框架
         常用的框架：
         1：Fundation框架：是用oc体现出来的。例如NSArray ，NSMutabelArray 就是封装在function中的。
         2：CoreFundation  这是c语言的fundtion。
         一和二之间的连接称之为桥接
         Fundation是以NS开头的
         CoreFundation是以CF开头的
         
         3：CFNetwork c语言中的网络请求相关的。
         
         4：AVFundation OC中的音视频相关的
         
         5：Core Data OC
         
         6：Core Text c语言写的，用于文本处理
         
         7：Core Animation oc和动画相关的。
         
         8：Core Graphics c语言的，和画图相关的。
        
         */
        
        
        NSArray *array = @[@(1),@(2)];
        CFArrayRef cfArray = (__bridge CFArrayRef)array;
        //c语言没有对象的概念，称之为引用。cfArray就称之为一个引用
        
        //再转换；
        NSArray *arr2 = (__bridge_transfer NSArray*)cfArray;
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
