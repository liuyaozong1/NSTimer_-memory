//
//  TimerProxy.h
//  内存管理-定时器
//
//  Created by liuyaozong on 2022/1/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TimerProxy : NSProxy
+(instancetype)initWithTarget:(NSObject *)target;
@property (nonatomic,weak) id target;
@end

NS_ASSUME_NONNULL_END
