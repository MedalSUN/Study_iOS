//
//  ViewController.m
//  OC_base_GCD
//
//  Created by SunDL on 2019/11/10.
//  Copyright © 2019 FZF. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*
     GCD  (Grand Center Dispatch) 线程的中枢调度器
     之前在使用Thread时，都是手动去进行线程的启动等，使用GCD之后，可以自动的管理线程的生命周期
     创建线程，调度任务，销毁线程；
     
     ！！！！ Thread是一个OC语言实现的线程
     GCD是一个纯C语言的API。因此他的速度会更快一点。
     
     核心概念
     1：任务
        Task  表示执行的操作
     2：队列
        queue 用来存放队列
     GCD会自动将队列中的任务取出，放在相应的线程中执行。  任务的取出，遵循！！先进先出！！的原则。排队
     
     
     常见术语
     1：同步  sync   锁是synchonization。因此，锁的意思也是让他去排队一个一个执行。谓之同步
     2：异步  async
     前两个是针对线程的。 同步是不创建子线程的。他会所有的任务都在一个线程中去排队执行。
     而异步他会去创建一个线程，通过OS中的时间片，去自动的切换任务的执行。
     他是决定是否创建子线程的
     3：并发
        有可能有多个线程去操作；
     4：串行
        只有一个线程去进行操作。
     */
    
    
    //同步串行
    dispatch_queue_t queue = dispatch_queue_create("串行", NULL);
//    dispatch_queue_t queue2 = dispatch_get_global_queue("并发", NULL);
    dispatch_sync(queue, ^{
        NSLog(@"result1: %@", [NSThread currentThread]);
    });
    
    dispatch_sync(queue, ^{
           NSLog(@"result2: %@", [NSThread currentThread]);
       });
    dispatch_sync(queue, ^{
           NSLog(@"result3: %@", [NSThread currentThread]);
       });
    
    //以上输出的全部都是mainThread
    
    
    //异步 async   dispatch_async
    
    
    //同步串行：  不分配子线程在主线程中排队顺序执行
    //同步并发：  不分配子线程在主线程中排队顺序执行
    //异步串行：  创建子线程，按顺序执行
    //异步并发：  创建子线程，根据任务个数创建多个线程；而且任务的执行顺序是不固定的
    
    //串行和并发的前提是是否有子线程，如果都没有子线程，他是没有区别的。当开启了子线程时，他的串行和并发才会根据线程个数，以及自己串并的特点进行运行。
    //异步的串行和并发 前者只开启一条子线程，后者根据queue的任务的数量进行创建。
    
    
    
    
    
    
    //实际使用场景
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        //开辟子线程去处理一些耗时的操作：下载图片，复杂的算法等等！！
        dispatch_async(dispatch_get_main_queue(), ^{
           //上面创建的异步线程执行完毕后，在这里执行主线程去刷新UI。
        });
    });
    
    
    
    
    //延迟执行
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5*NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"延迟了5秒钟，打印这段代码");
    });
    
    //延迟执行的他并不会阻塞主线程的执行，他会先开辟一个子线程，去等5秒。之后再获取到主线程。并进行执行上面那个打印执行。
    
    
    
    //只执行一次：
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSLog(@"只执行一次");
    });
    
    //在外界不论调用多少次的包含上述dispatch_once的代码的函数。他也只会执行这一次；
    
    
    
}


@end
