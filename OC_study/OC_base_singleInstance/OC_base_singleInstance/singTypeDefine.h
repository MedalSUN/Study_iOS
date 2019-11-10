/*
 宏定义类，一般都是一个.h文件
 */

//如果一个Person单例不够，还需要去使用Dog等的单例。
//所以就可以将这个创建单例的方法抽取成宏定义

/*
 1：使用##拼接传进来的类
 2：使用\可以表示为下一行也是我的定义范围。
 */

#define singTypeDefine_h(name) \
+(instancetype)shared##name;

#define singTypeDefine_m(name) \
+(instancetype)shared##name{ \
    static id instance = nil; \
    static dispatch_once_t onceToken; \
    dispatch_once(&onceToken, ^{ \
        instance = [[self alloc] init]; \
    }); \
    return instance; \
}







