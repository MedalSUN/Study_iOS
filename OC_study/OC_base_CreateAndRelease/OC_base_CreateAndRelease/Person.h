//
//  Person.h
//  OC_base_CreateAndRelease
//
//  Created by SunDL on 2019/7/24.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property(nonatomic, copy) NSString *name;
-(void)myName;


// -(id)initWithName:(NSString *)name; // id 表示任意类型，他只有在运行的时候才能够确定是什么类型; 开发中不常用

-(instancetype)initWithName:(NSString *)name; // instancetype表示实例类型，在编译时期就已经确定了返回的类型

@end

NS_ASSUME_NONNULL_END
