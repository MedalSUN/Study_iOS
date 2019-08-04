//
//  main.m
//  OC_base_inherit
//
//  Created by SunDL on 2019/8/4.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Father.h"
#import "Son.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /*
         继承
         1: 在oc中所有的类都继承自NSObject,NSObject是所有类的基类；
         2:oc中的继承使用：来代表;
         3:子类可以继承父类的属性，但不能继承父类的成员变量和在.m文件中定义的属性（相当于是私有的）;
         4:子类可以继承父类的方法；
         5:子类若有和父类同样的方法，表示重写
         
         */
        
        
        Son *s = [[Son alloc] init];
        s.age = 23; // 可以成功的将age属性获取到
        // s.exprience 无法获取到经验属性，因为exprience是Father的成员变量
        
       // [s eating];// 执行输出的是 Father is eating。
        
        // 重写方法后：
        [s eating]; // 执行输出的是 Son is eating。
        
        /*
         在Son子类中重写eating方法时使用了
         [super eating]
         意思是先调用父类的eating方法，
         在项目中，每一个界面UI组件都继承自UIView，在initWithFrame方法中都使用
          self = [super initWithFrame:frame];
         意义就在与执行父类，即真正定义initWithFrame方法的类中的初始化组件的方法
         */
        
        
        
        
        /*
         使用继承的优点：
         1:可以直接从父类中获取到相应的属性数据，而不用再自己去创建；
         2:代码结构，逻辑非常的清晰；
         3:子类在继承的同时，也可以去重写相应的方法，或者补充相应的属性和方法。
         
         */
        
    }
    return 0;
}
