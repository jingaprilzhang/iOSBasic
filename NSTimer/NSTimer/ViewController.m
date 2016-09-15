//
//  ViewController.m
//  NSTimer
//
//  Created by JING ZHANG on 9/15/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize timerView = _timerView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 100, 80, 40);
    
    [btn setTitle:@"timer start" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pressStart) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    
    UIButton * btnStop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 200, 80, 40);
    
    [btn setTitle:@"timer stop" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pressStop) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btnStop];
    
    UIView * view = [[UIView alloc] init];
    
    view.frame = CGRectMake(0, 0, 80, 80);
    
    view.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview:view];
    
    view.tag = 101;
    
}


- (void) pressStart {
    
    _timerView = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTimer:) userInfo:@"Mary" repeats:YES];
}


- (void) updateTimer: (NSTimer *) timer {
    
    NSLog(@"Test!!! name = %@", timer.userInfo);
    
    UIView * view = [self.view viewWithTag:101];
    
    view.frame = CGRectMake(view.frame.origin.x + 1, view.frame.origin.y + 1, 80, 80);
}

- (void) pressStop {
    
    if (_timerView != nil) {
        
        [_timerView invalidate];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
