//
//  main.m
//  OC_base_KVC_KVO
//
//  Created by SunDL on 2019/7/26.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"
#import "PersonObserver.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /*
         KVC  KVO
         
         一：KVC。【key-value-coding】 键值对编码
         
         二：KVO。【key-value-observer】 键值对观察者
         
         
         */
        
        // 1:KVC在字典中的使用
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        
        // 1.1:传统的赋值方式
        dict[@"name"] = @"jack";
        
        // 1.2使用KVC的方式进行赋值
        [dict setValue:@"Tom" forKey:@"name2"];
        // 实际上无论使用哪种方式进行赋值，他背后的底层操作都是使用KVC来进行的。
        
        //2:KVC在对象中的使用
        Person *p = [[Person alloc] init];
        [p setValue:@"张三" forKey:@"name"];
        NSLog(@"名字为： %@", p.name);
        
        
        
        
        
        
        // 2: KVO
        // KVO多用于属性的监听上
        PersonObserver *observer = [[PersonObserver alloc] init];
       [p addObserver:observer forKeyPath:@"name" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:@"随便值"];

        p.name = @"KAKA"; // 改变属性值
        
        // 移除监听
        [p removeObserver:observer forKeyPath:@"name"];
        
        
        
        
        
        
    }
    return 0;
}
