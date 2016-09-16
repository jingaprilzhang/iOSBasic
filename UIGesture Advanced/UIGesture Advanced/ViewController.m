//
//  ViewController.m
//  UIGesture Advanced
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
    
    UIImage * image = [UIImage imageNamed:@"jing.jpg"];
    
    UIImageView * iView = [[UIImageView alloc] initWithImage:image];
    
    iView.frame = CGRectMake(50, 80, 200, 320);
    
    [self.view addSubview:iView];
    
    iView.userInteractionEnabled = YES;
    
    _pinchGes = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchAct:)];
    
    [iView addGestureRecognizer:_pinchGes];

    _rotGes = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotAct:)];
    
    [iView addGestureRecognizer:_rotGes];
    
    _rotGes.delegate = self;
    
    _pinchGes.delegate = self;
}

- (BOOL) gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    
    return YES;
}

- (void) rotAct: (UIRotationGestureRecognizer *) rot {
    
    UIImageView * iView = (UIImageView *) rot.view;
    
    iView.transform = CGAffineTransformRotate(iView.transform, rot.rotation);
    
    rot.rotation = 0;

}


- (void) pinchAct: (UIPinchGestureRecognizer *) pinch {
    
    UIImageView * iView = (UIImageView *) pinch.view;
    
    iView.transform = CGAffineTransformScale(iView.transform, pinch.scale, pinch.scale);
    
    pinch.scale = 1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
