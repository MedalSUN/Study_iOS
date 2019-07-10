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
        
        // 以**开头
        Boolean prefix = [str5 hasPrefix:@"M"]; // 返回值是 1。表示yes
        NSLog(@"str5是否存在前缀： %d", prefix);
        // 以**结尾
        Boolean suffix = [str5 hasSuffix:@"zero"];
        NSLog(@"str5是否存在后缀： %d", suffix); // 返回值是 0。 表示no
        // 在z已有字符串中判断是否有某一个字符（字符串）
        NSRange range = [str5 rangeOfString:@"am"]; // struct 结构体，NSRange是一个结构体，他是基本数据类型
        NSLog(@"是否存在am，他的位置为, %ld", range.location); // 如果溢出，即显示的是一个非常大的数值，则表示不存在。
        NSLog(@"是否存在am，他的长度为, %d", range.length); // 如果length为0，则表示不存在。
    }
    return 0;
}
