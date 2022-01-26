//
//  ViewController.m
//  内存管理-定时器
//
//  Created by liuyaozong on 2022/1/25.
//

#import "ViewController.h"
#import "TestViewController.h"
#import "TimerPersent.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //保证调用频率和刷帧频率保持一致  60fps
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    TestViewController *vc = [[TestViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
