//
//  main.m
//  OC_base_StructAndEnum
//
//  Created by SunDL on 2019/7/22.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>

// 1.1结构体的第一种定义方法
// 注意结构体内部需要使用分号进行间隔。
struct LFDate {
    int year;
    int month;
    int day;
};

// 1.2 struct的第二种定义语法
typedef struct{
    int year;
    int month;
    int day;
} LFDate2;


// 2.1 c语言风格的枚举类型的定义
enum {
    spring,
    summer,
    autumn,
    winter
} season;

// 2.2 oc风格的枚举，开发中最常用
typedef NS_ENUM(NSInteger, Season2){
    Season2Spring,
    Season2Summer,
    Season2Autumn,
    Season2Winter
};

// 3 选择性枚举
typedef NS_OPTIONS(NSInteger, BallDirection){
    BallDirectionNone = 0,
    BallDirectionUp = 1,
    BallDirectionRight = 2,
    BallDirectionDown = 3,
    BallDirectionLeft = 4
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 枚举和结构体
        
        /*
         在实际开发中一般很少自己定义结构体，而是通过调用系统定义的结构体进行使用
         例如CGPoint
         struct CGPoint {
            CGFloat x;
            CGFloat y;
         };

         */
        
        // 1.1 结构体第一种定义方法的使用方法
        struct LFDate date1 = {2019, 7, 22};
        NSLog(@"年：%d, 月：%d, 日: %d",  date1.year, date1.month, date1.day);
        
        
        // 1.2 第二种定义语法
        /*
         typedef 来源于c语言，是typedefined的缩写，用来定义一些数据类型。
         在这里使用typedef来定义一个结构体，结构体的名字在结构体的后面跟着。
         这里定义的结构体就相当于是定义了一种数据类型
         */
        
        LFDate2 date2 = {2019, 7, 22};
        NSLog(@"年：%d, 月：%d, 日: %d",  date2.year, date2.month, date2.day);
        
        
        
        
        // 枚举
        
        // 2.1 使用c语言风格的定义，枚举是可以直接拿来用的
        NSString *season1 = spring;
        
        // 2.2 oc风格的枚举
        /*
         1: 定义时数据类型一般都为整形，并且在默认情况下，第一个是0  Season2Spring = 0
         2: 如果第一个值不是0，那么接下来的值将会依次往下增加1。 Season2Spring = 2
         3: 定义时枚举的每一项一般都是枚举名跟着具体的意义，例如Season2Spring Season2Summer等
         4: 实际开发中判断枚举类型最好使用switch语法。而且case后跟的是枚举中的值，并且都是语义化的内容
         */
        
        
        
        
        // 选择性枚举的使用，还没有遇见场景
        // 但是非常重要
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
