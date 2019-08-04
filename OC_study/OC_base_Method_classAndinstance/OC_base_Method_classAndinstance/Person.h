//
//  Person.h
//  OC_base_Method_classAndinstance
//
//  Created by SunDL on 2019/8/4.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject



/*
 实例方法：
 1: - 开头
 2:由实例调用，即由对象调用
 */
-(void)runing;

/*
 类方法
 1: + 开头
 2: 由类名直接调用
 */
+(void)eating;

/*
 1: 类方法之间可以相互调用，但是不能与实例方法之间相互调用
 2：类方法可以通过创建对象来调用实例方法
 3: 类方法不能使用属性，因为属性是实例方法使用的。
*/
+(void)sleeping;






/*
 实例方法和类方法中的self的区别
 1: 实例方法中的self，其实就是实例对象，它指向实例对象的首地址；
 2: 类方法中的self 其实是class 。因此他是不能使用属性的。
 
 
 */


// 使用类方法，可以很便捷的调用一些操作，而不用去创建初始化一个对象。





@end

NS_ASSUME_NONNULL_END
