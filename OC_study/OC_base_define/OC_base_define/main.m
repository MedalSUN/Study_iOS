//
//  main.m
//  OC_base_define
//
//  Created by SunDL on 2019/7/21.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>


#define PI 3.1415926
#define SUM(a, b) a + b
#define COUNT 100

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /*
          一：宏定义
         #define
         1:定义一些常量，改动时只需要改动一处即可。
         2: 宏定义一般是用来占位，因此调用他的地方他会原封不动的搬过去【要注意一些调用函数的使用陷阱】
         3: 宏定义涉及到定义时，一定要加上相应的括号，他直接搬过去，不加括号，意义变了。
         
         
         */


        NSLog(@"PI is %f", PI);

        NSLog(@"结果是： %d", SUM(3, 4)); // 输出7


        NSLog(@"两倍结果是： %d", SUM(3, 4) * 2); // 输出11
        NSLog(@"两倍结果是： %d", 3 + 4 * 2); // 上面的调用宏相当于是将宏原封不动的搬过来。
        // 因此，使用时一定要括号括起来



        
        // 二： 预处理指令
        
        
        // 第一种写法： #if #endif
        #if defined(COUNT)
            NSLog(@"COUNT定义了");
        #endif
        
        
        // 第二种写法： #if #elif #else #endif
        #if COUNT == 1
        NSLog(@"COUNT等于1");
        #elif COUNT == 2
        NSLog(@"COUNT等于2");
        #else
        NSLog(@"COUNT等于100");
        #endif
        
        
        


        /*
         在iOS项目中默认只有一个target，但是你可以创建多个target，例如一个中文版的一个英文版的。
         在项目的Build Settings中的Preprocessor中可以设置Debug，定义不一样的预处理指令宏，用于区分两个target
         
         因此可以在相关页面使用预处理指令，对宏的值进行判断，并在相应的分支中加上判断！！
         
         
         */
















    }
    return 0;
}
