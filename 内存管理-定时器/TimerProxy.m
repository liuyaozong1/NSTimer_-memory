//
//  TimerProxy.m
//  内存管理-定时器
//
//  Created by liuyaozong on 2022/1/26.
//

#import "TimerProxy.h"

@implementation TimerProxy
+(instancetype)initWithTarget:(NSObject *)target {
    TimerProxy *proxy = [TimerProxy alloc];
    proxy.target = target;
    return  proxy;
}

-(NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    return  [self.target methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    [invocation invokeWithTarget:self.target];
}

@end
