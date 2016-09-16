//
//  ViewController.m
//  UIGesture
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
    
    _imageView = [[UIImageView alloc] init];
    
    _imageView.image = image;
    
    _imageView.frame = CGRectMake(50, 80, 200, 300);
    
    [self.view addSubview:_imageView];
    
    _imageView.userInteractionEnabled = YES;
    
    UITapGestureRecognizer * tapOneGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapOneAct:)];
    
    tapOneGes.numberOfTapsRequired = 1;
    
    tapOneGes.numberOfTouchesRequired = 1;
    
    [_imageView addGestureRecognizer:tapOneGes];
    
    UITapGestureRecognizer * tapTwo = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapTwo:)];
    
    tapTwo.numberOfTapsRequired = 2;
    
    tapTwo.numberOfTouchesRequired = 1;
    
    [_imageView addGestureRecognizer:tapTwo];
    
    [tapOneGes requireGestureRecognizerToFail:tapTwo];
}

- (void) tapTwo: (UITapGestureRecognizer *) tap {
    
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    _imageView.frame = CGRectMake(50, 80, 200, 300);
    
    [UIView commitAnimations];
    
    NSLog(@"double click");
}

- (void) tapOneAct: (UITapGestureRecognizer *) tap {
    
    UIImageView * imageView = (UIImageView *) tap.view;
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:2];
    
    imageView.frame = CGRectMake(0, 0, 320, 568);
    
    [UIView commitAnimations];
    
    NSLog(@"click once");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
