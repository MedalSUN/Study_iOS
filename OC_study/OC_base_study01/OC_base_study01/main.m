//
//  main.m
//  OC_base_study01
//
//  Created by FZF on 2019/7/9.
//  Copyright © 2019 FZF. All rights reserved.
//
/* #import是将文件引入
 尖括号的就是导入系统的框架，或者是自定义的第三方类库
 双引号的就是导入自定义的类 例如 "Person.h"
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // NSLog(@"Hello, World!");
        
        // 1: 整形  基本数据类型
        NSInteger a1 = 1; // 有符号整形： 从负到正  -1 0 3。一般来讲使用NSInteger就足够了
        NSUInteger a2 = 2; // 无符号整形：正数
        
        // 2: 浮点类型  基本数据类型
        float b1 = 0.3;
        CGFloat b2 = 0.4;
        // NSLog(@"出现的浮点b1值是：%f", b1);
        // NSLog(@"出现的浮点b1值是：%.2f", b2); // 格式化浮点数
        
        
        // 3: 字符串 引用数据类型
        // 注意： 在oc中字符串是用@开头的！
        // 复杂数据类型：需要添加*
        NSString *str1 = @"字符串是复杂数据类型";
        // NSLog(@"你好世界，iOS学习字符串数据类型");
        // NSLog(@"字符串是：%@", str1);
        
        // 4: 数组 引用数据类型
        NSArray *arr1 = [NSArray arrayWithObjects:@"first", @"second", nil]; // 这个定义方式实际上是沿用了c语言的定义方式，实际开发中使用下一种方式。
        NSArray *arr2 = @[@"first", @"second"];
        
        // 5: 字典 引用数据类型
        NSDictionary *dict1 = [NSDictionary dictionaryWithObjectsAndKeys:@"Tom", @"name1", @"Rose", @"name2", nil]; // 传统写法字典对象放在前面，key值放在后面。非常麻烦，开发时采用第二种。
        NSDictionary *dict2 = @{
                                @"name1" : @"Tom",
                                @"name2" : @"Jack"
                                };
        
        
        
        // 循环 基本上都只是使用for循环
        for (NSInteger i = 0; i < arr2.count; i++) {
            NSLog(@"arr2数组中的每一项是：%@", arr2[i]);
        }
        // 使用for in循环进行快速遍历。     【快捷键： 输入forin 后直接回车即可】
        for (NSString *ele in arr2) {
            NSLog(@"element is %@", ele);
        }

        }
    return 0;
}
