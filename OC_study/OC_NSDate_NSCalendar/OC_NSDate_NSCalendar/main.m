//
//  main.m
//  OC_NSDate_NSCalendar
//
//  Created by SunDL on 2019/7/21.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // NSDate和NSCalendar
        
        /*
         NSDate
            多用于对服务端返回的数据进行处理，因为通常返回的是NSString类型的，需要转换成NSDate类型的数据
         
         
         */

        // 1: 获取当前时间
        NSDate *date = [NSDate date];
        NSLog(@"当前时间为： %@", date); // 涉及到时区问题，有八小时的差距

        // 2: 字符串转换成NSDate
        NSString *str = @"2019-07-21 20:30:00";
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        //[dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"]; // dateFormatter.dateFormat:@"yyyy-MM-dd"
        dateFormatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
        NSDate *time = [dateFormatter dateFromString:str];
        NSLog(@"格式化后的时间为： %@", time);

        // 3: 将时间转换成时间戳（1970/1/1）
        /*
         时间戳的作用：一般客户端取时间用的都是服务器传过来的时间，但是如果用的是字符串形式的时间，他是存在时区误差的
         采用时间戳就不会存在误差了！！
         */
        
        NSString *timestampStr = @"1563713895475";// 毫秒
        NSTimeInterval timeStamp = [timestampStr longLongValue] / 1000.0; // 不是毫秒不用除以1000
        NSDate *newDate = [NSDate dateWithTimeIntervalSince1970:timeStamp];
        NSLog(@"转换后的日期为： %@", newDate);



        
        /*
         NSCalendar
         
         
         */

        // 取年月日等数据
        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSInteger day = [calendar component:NSCalendarUnitDay fromDate:newDate]; // 不知道数据类型参数，可以点进去看一下
        NSLog(@"day is : %ld", (long)day);
        

        // 时间的比较
        NSComparisonResult result = [date compare:newDate]; // 枚举类型是简单数据类型
        // NSComparisonResult 点进去看是一个枚举类型，因此使用switch case
        switch (result) {
            case NSOrderedAscending:
                NSLog(@"升序");
                break;
            case NSOrderedSame:
                NSLog(@"相等");
                break;
            case NSOrderedDescending:
                NSLog(@"降序");
                break;
                
            default:
                break;
        }







    }
    return 0;
}
