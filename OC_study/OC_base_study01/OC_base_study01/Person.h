//
//  Person.h
//  OC_base_study01
//
//  Created by FZF on 2019/7/9.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
// 注意：在这里方法签名关键字是两个： addNumber1，withNumber2。
// 当转换成c语言的形式时，方法名就是addNumber1WithNumber2
- (NSInteger)addNumber1:(NSInteger)number1 withNumber2:(NSInteger)number2;
@end

NS_ASSUME_NONNULL_END
