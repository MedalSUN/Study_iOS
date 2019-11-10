//
//  ViewController.m
//  OC_base_Thread
//
//  Created by SunDL on 2019/11/10.
//  Copyright © 2019 FZF. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic)NSInteger ticketCount;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.ticketCount = 50;
    // Do any additional setup after loading the view.
    /*
            进程和线程
            Thread
            1：进程：一个app中对应一个进程。进程之间是不能互相访问数据的；但是他们可以之间相互跳转。即从一个app跳转到另外一个app
            2：一个进程可以包含多个线程
               例如，一个app，既可以聊天，又可以听音乐。微信app中的朋友圈打开音乐，可以放音乐后台持续运行，然后还可以同时进行聊天。
              对于UI方面的操作都是在主线程中处理的！！！！！
            3：为什么要使用线程：一个线程可以单独的处理复杂的计算和算法；但是不影响主线程的中的功能。互不干扰。主线程在运行中不会被卡死。
            只要你不开辟子线程。都是在主线程中的。
            
            4：为什么多线程之间互相协作，感觉不到卡顿。
              操作系统有一个时间片，轮询的机制。  他会在非常短的时间内将多个任务进行不断的切换，在人的感官中，他是没有卡顿的。就像多个任务同时在进行一样。
            所以实际上在时间片中他还是一个接一个的执行，但是就是不断的切换执行，
            。。。注意如果只是时间片是一个任务一个的接着执行的话。空出来的时间线程他只会等待。不会使用其他线程做事情。，。
            实际上还是为了提升效率。他有这个能力，去可以完成人感官感觉不到的切换动作。那么他就要做多线程的事情
            
            */
           
           
           
   /*
    NSThread
    1:动态的创建
    */
   NSThread *thread1 = [[NSThread alloc] initWithTarget:self selector:@selector(runThread) object:nil];
    //可以为线程进行命名
    thread1.name = @"Jack";
    //启动线程使用start方法。
    [thread1 start];
    /*
     静态创建
     方法的返回值是void。所以他是不需要保存这个线程变量的
     */
    [NSThread detachNewThreadSelector:@selector(runThread) toTarget:self withObject:nil];
           
    
    //获取当前被执行代码的所属的线程名称
    [NSThread currentThread];
    
    //获取主线程的名称
    [NSThread mainThread];
    
    
    
         
}
/*
 外界同时开启两个线程进行卖票操作，有可能会在上一个thread没有执行完就进行去。因此需要加一个锁。
 让他在外面进行排队。锁一次只允许一个在里面。
 一个在卖，另一个就需要等待
 多个线程同时抢占资源。需要使用锁。
 @synchronized()
 */

-(void)runThread{
    while (YES) {
        @synchronized (self) {
            if (self.ticketCount > 0) {
                self.ticketCount -- ;
                NSLog(@"剩余票数：%ld, 卖家：%@",self.ticketCount,[NSThread currentThread]);
            }else{
                NSLog(@"票卖完了");
                break;
            }
        }
    }
}


@end
