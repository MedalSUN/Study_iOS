//
//  Person.h
//  OC_base_property
//
//  Created by SunDL on 2019/7/25.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject{
    NSString *_name;
}

/*
 最早是使用上面的形式去定义变量
 1: _name   即_XXX形式的变量都是属于类里面的成员变量
 2:在使用上面这种形式定义成员变量时，是需要自定义set get方法
 3: 在oc中不建议使用get作为方法的前缀，因为get方法都是他系统一些内部定义的框架方法，因此get一般都省略掉了。
 */

-(void)setName:(NSString *)name;

-(NSString *)name;




// @property(nonatomic,copy)NSString *name; // 目前都是使用这种方式去定义变量



// getter的使用：  注意： 这个getter的使用需要is加上属性名首字母的大写
@property(nonatomic,assign, getter=isBoy) BOOL boy;


@end

NS_ASSUME_NONNULL_END
