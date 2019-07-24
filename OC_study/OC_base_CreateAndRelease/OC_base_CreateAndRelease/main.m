//
//  main.m
//  OC_base_CreateAndRelease
//
//  Created by SunDL on 2019/7/24.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 一：构造方法     创建对象
        
        // 1: new方法创建对象
        Person *p = [Person new];
        p.name = @"Tom";
        NSLog(@"这个人的名字为： %@", p.name);
        
        // 2: alloc init 方法创建对象 == 最常用
        Person *p2 = [[Person alloc] init];
        p2.name = @"Jack";
        NSLog(@"第二个人的名字为： %@", p2.name);
        
        // 3: 使用自定义的init方法进行创建对象
        Person *p3 = [[Person alloc] initWithName:@"Rose"];
        NSLog(@"第三个人的名字为： %@", p3.name);
        
        
        // 二：析构方法。     释放对象
        // 当前三个对象，全部执行完相应的方法后，并且执行到程序的最后面，即大括号处，就会自动执行dealloc方法
        
        
    }
    return 0;
}
