//
//  Father.h
//  OC_base_inherit
//
//  Created by SunDL on 2019/8/4.
//  Copyright © 2019 FZF. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Father : NSObject {
    NSInteger exprience; // Father的成员变量
}

@property(nonatomic, assign) NSInteger age;

-(void)eating;



@end

NS_ASSUME_NONNULL_END
