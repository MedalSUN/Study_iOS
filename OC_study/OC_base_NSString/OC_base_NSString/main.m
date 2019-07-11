//
//  main.m
//  OC_base_NSString
//
//  Created by FZF on 2019/7/10.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        // 1.字符串的创建
        NSString *str1 = @"hello Tom";   // 方法1: 直接创建
        NSString *str2; // 方法2:在这里只是定义并没有赋值，因此默认值是nil
        str2 = @"Rose";
        
        
        // 2: 格式化字符串（拼接字符串） === 注意了，这种方式较为麻烦，在实际中并不使用这种方式来进行字符串的拼接
        // 在其他语言中p字符串的拼接是可以直接使用concat方法，或者+的方式进行拼接，在OC中独特
        NSString *str3 = @"Rose";
        NSString *str4 = [NSString stringWithFormat:@"你好 %@", str3];  // 注意：在拼接的字符串前一定要加 %@ 作为被拼接字符串的占位符。
        NSLog(@"拼接后的字符串为： %@", str4);
        
        // 3: 对字符串中包含的判断。
        NSString *str5 = @"My name is zero";
        
        // 3.1:以**开头
        Boolean prefix = [str5 hasPrefix:@"M"]; // 返回值是 1。表示yes
        NSLog(@"str5是否存在前缀： %d", prefix);
        // 3.2:以**结尾
        Boolean suffix = [str5 hasSuffix:@"zero"];
        NSLog(@"str5是否存在后缀： %d", suffix); // 返回值是 0。 表示no
        // 3.3:在已有字符串中判断是否有某一个字符（字符串）
        NSRange range = [str5 rangeOfString:@"am"]; // struct 结构体，NSRange是一个结构体，他是基本数据类型 == 结构体可以使用点的形式直接将它获取到。
        NSLog(@"是否存在am，他的位置为, %ld", range.location); // 如果溢出，即显示的是一个非常大的数值，则表示不存在。
        NSLog(@"是否存在am，他的长度为, %lu", range.length); // 如果length为0，则表示不存在。
        
        // 4: 字符串的比较
        // 4.1:字符串内容的比较
        NSString *str6 = @"one";
        NSString *str7 = @"two";
        Boolean res1 = [str6 isEqualToString:str7];
        NSLog(@"str6和str7的内容比较结果是， %d", res1);
        // 4.2:字符串排序的比较  【 -1:升序  0:相等  1:降序 】
        NSString *str8 = @"onea";
        NSString *str9 = @"oneA";
        NSComparisonResult res2 = [str8 compare:str9]; // 是枚举类型，返回值是NSInteger
        NSLog(@"str8和str9的排序j比较结果为： %d", res2);
           // 注意： compare方法是区分大小写的 caseInsensitiveCompare
        
        
        // 5: 字符串全部大写，小写
        /*
         5.1: 字符串全部大写： uppercaseString
         5.2: 字符串全部小写： lowerxcaseString
         5.3: 字符串首字母大写： capitalizedString
         */
        
        
        
        
        
        
        
        
    }
    return 0;
}
