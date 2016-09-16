//
//  ViewController.m
//  UIGesture Extention
//
//  Created by JING ZHANG on 9/16/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView * iView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"jing.jpg"]];
    
    iView.frame = CGRectMake(50, 50, 200, 300);
    
    [self.view addSubview:iView];
    
    iView.userInteractionEnabled = YES;
    
    UIPanGestureRecognizer * pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panAct:)];
    
    [iView addGestureRecognizer:pan];
    
    [iView removeGestureRecognizer:pan];
    
    UISwipeGestureRecognizer * swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeAct:)];
    
    swipe.direction = UISwipeGestureRecognizerDirectionLeft|UISwipeGestureRecognizerDirectionRight;
    
    [iView addGestureRecognizer:swipe];
    
    UILongPressGestureRecognizer * longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(pressLong:)];
    
    [iView addGestureRecognizer:longPress];
    
    longPress.minimumPressDuration = 0.5;
    
}

- (void) panAct:(UIPanGestureRecognizer *) pan {
    
    CGPoint pt = [pan translationInView:self.view];
    
    NSLog(@"pt.x = %.2f, pt.y = %.2f", pt.x, pt.y);
    
    CGPoint pV = [pan velocityInView:self.view];
    
    NSLog(@"pV.x = %.2f, pV.y = %.2f", pV.x, pV.y);
}

- (void) swipeAct:(UISwipeGestureRecognizer *) swipe {
    
    if (swipe.direction & UISwipeGestureRecognizerDirectionLeft) {
        NSLog(@"Swipe to Left");
    } else if (swipe.direction & UISwipeGestureRecognizerDirectionRight) {
        NSLog(@"Swipe to right");
    }
}

- (void) pressLong: (UILongPressGestureRecognizer *) press {
    
    if(press.state == UIGestureRecognizerStateBegan){
        NSLog(@"State Begin");
    }else if (press.state == UIGestureRecognizerStateEnded) {
        NSLog(@"State End");
    }
    
     NSLog(@"Press Long");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
