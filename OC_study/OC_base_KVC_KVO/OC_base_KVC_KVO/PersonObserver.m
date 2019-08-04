//
//  PersonObserver.m
//  OC_base_KVC_KVO
//
//  Created by SunDL on 2019/7/26.
//  Copyright © 2019 FZF. All rights reserved.
//

#import "PersonObserver.h"

@implementation PersonObserver
-(void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    // change是一个字典类型的，使用遍历字典的方法去遍历
    
    [change enumerateKeysAndObjectsUsingBlock:^(NSKeyValueChangeKey  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        NSLog(@"key: %@, value: %@", key, obj);
    }];
    
    
}
@end
