//
//  main.m
//  OC_base_NSArray_NSDictionary
//
//  Created by FZF on 2019/7/12.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // ---------------NSArray 数组
        // 1: 创建数组
        // 1.1 实例化创建数组。先使用alloc申请分配内存 再使用init初始化对象
        NSArray *arr1 = [[NSArray alloc] initWithObjects:@"Jack",@"Tom", nil];
        // 1.2 类方法创建 直接使用NSArray的类方法进行创建。
        NSArray *arr2 = [NSArray arrayWithObjects:@"Jack", @"Tom", nil];
        // 1.3 语法糖创建
        NSArray *arr3 = @[@"Jack", @"Tom"]; // 空数组时，代表数组个数为0，但数组对象不为nil
        
        // 2: 索引元素 【根据索引获取到相应的数据】
        NSString *str1 = arr3[1];
        // 当要获取的位数是比较特殊的，例如是第一位，或者最后一位时。可以使用firstObject，或者lastObject，更加方便
        NSString *first = arr3.firstObject;
        NSString *last = arr3.lastObject;
        
        // 3: 获取数组元素的个数
        NSInteger count = arr3.count;
        
        
        // 4:获取数组元素的位置
        NSInteger index = [arr3 indexOfObject:@"Tom"];
        // NSLog(@"Tom的位置为： %ld", (long)index);  // 找不到是-1
        
        
        
        
        // -----------------NSDictionary 字典 { KEY -- VALUE }
        
        // 1： 字典的声明。直接使用语法糖进行声明。要注意NSDictionary也是一个引用类型，因此他需要添加@。
        NSDictionary *dict = @{
            @"name": @"Jack",
            @"address": @"Shanghai"
        };
        
        // 2: 字典的取值。
        // 2.1直接取值
        NSString *str2 = dict[@"name"];  // 可以通过键值来取出相应的value
        // 2.2:通过方法取值
        NSString *str3 = [dict objectForKey:@"name"];
        
        
        // 3: 获取所有的key或者所有的value
        NSArray *arr4 = dict.allKeys;  // allKeys是字典对象的只读属性；
        NSArray *arr5 = dict.allValues; // allValues是字典对象的只读属性；
        
        
        // ==================================== 注意：
        // 在NSArray 和 NSDictionary 字典和数组中的元素，必须是引用数据类型！！！ 不能是基本数据类型。
        
        // ===================================================================================
        // 遍历NSArray和NSDictionary的几种方法
        
        // 一：遍历NSArray
        
        // 1: for循环遍历数组  使用下标获取数组中的某一项
        NSArray *arr6 = @[@"Jack", @"Tom", @"Rose"];
        for (NSInteger i = 0; i < arr6.count; i++) {
            if (i > 0) {
                continue;  // continue的意思为放弃本次循环，重新开始
            }
            if (i == 1) {
                break; // break的意思是停止执行，并跳出本层循环体。
            }
            NSLog(@"数组中的每一项为： %@", arr6[i]);
        }
        
        // 2: for in循环遍历数组。注意for in循环遍历出来的是数组中的每一项，而不是数组下标。
        for (NSString *item in arr6) {
            NSLog(@"for in数组循环中的每一项为： %@", item);
        }
        
        // 3: enumerate
        [arr6 enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            
            //在enumreate中使用stop代替break操作
            if( idx == 1){
                *stop = YES; // 使用enumerate的第三个参数来控制跳出循环
            }
            
            // NSLog(@"index为： %lu", (unsigned long)idx, @"value为：%@", obj);
            NSLog(@"index为：%d  ---  value为： %@", idx, obj);
        }];
        
        
        // 二: 遍历字典 NSDictionary
        NSDictionary *dictTest = @{
                               @"name": @"Jack",
                               @"address": @"Shanghai"
                               };
        
        // 1:for in循环遍历字典
        for (NSString *key in dictTest) {
            NSLog(@"key值为：%@, value值为： %@", key, dictTest[key]);
        }
        
        // 2:使用enumerate遍历字典
        [dictTest enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            NSLog(@"遍历的字典的key为： %@---- value为：%@", key, obj);
        }];
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
