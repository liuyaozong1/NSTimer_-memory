//
//  TestViewController.m
//  内存管理-定时器
//
//  Created by liuyaozong on 2022/1/25.
//

#import "TestViewController.h"
#import "TimerPersent.h"
#import "TimerProxy.h"
@interface TestViewController ()
@property (nonatomic,strong) CADisplayLink *link;
@property (nonatomic,strong) NSTimer *timer;
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
//    self.link = [CADisplayLink displayLinkWithTarget:self selector:@selector(start)];
//    [self.link addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSRunLoopCommonModes];
    __weak typeof(self) weakSelf = self;
    //方案 1
//    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:[TimerPersent initWithObject:self] selector:@selector(start) userInfo:nil repeats:YES];
    //方案 2  相对于方案 1. NSProxy 是专门来做消息转发的, 效率比较高
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:[TimerProxy initWithTarget:self] selector:@selector(start) userInfo:nil repeats:YES];
    
    //方案 3
//    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1 repeats:true block:^(NSTimer * _Nonnull timer) {
//        [weakSelf start];
//    }];
    
}

//开始
-(void)start {
    NSLog(@"%s",__func__);
}

-(void)dealloc {
    [self.timer invalidate];
    NSLog(@"销毁了");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
