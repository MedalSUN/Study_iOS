//
//  Person.m
//  OC_base_CreateAndRelease
//
//  Created by SunDL on 2019/7/24.
//  Copyright © 2019 FZF. All rights reserved.
//

#import "Person.h"

@implementation Person


-(void)myName {
    NSLog(@"my name is: %@", self.name);
}

/*
 分析： 注意initWithName就是初始化方法init，只不过由于oc中的方法命名的特殊性，后面加上了参数name；
 因此他的方法名就称为initWithName。
 在iPad项目中每一个UIView组件都有一个initWithFrame方法，都要先self = （【super initWithFrame：frame】）先执行继承的文件UIView中的初始化方法initWithFrame，只有他先形成了一个frame，也就是self，你才可以在这个文件中尽情的在这个frame上画画，这就是继承。这个init方法是需要继承的
 因此在这里需要先执行NSObject的init的方法，返回一个object对象，进而执行接下来的操作
 一定不要忘记！！！！
 
 
 */
-(instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
};



/*
 dealloc是析构函数，他是自动执行的
 当在main文件中对于本Person类的引用结束之后，他就会自动调用dealloc的函数用于释放内存
 
 在项目中一个UIView子类的dealloc也是如此，他会在对当前类的引用结束之后自动的执行dealloc，并且会在
 dealloc中将subviews中add进去的remove掉！！！！
 
 注意引用结束的范围：  是main文件中的包含可执行部分的整个大括号，程序运行结束到底，他就会自动执行dealloc
 
 
 */


-(void) dealloc{
    // 通常会有一些释放清除内存的操作
    // removeFromSuperview 或者 removeAllObjects 等释放内存的操作
    NSLog(@"自动执行了");
}



@end
