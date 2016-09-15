//
//  ViewController.m
//  UISlider
//
//  Created by JING ZHANG on 9/15/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize slider = _slider;
@synthesize pView = _progressView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _progressView = [[UIProgressView alloc] init];
    
    _progressView.frame = CGRectMake(50, 100, 200, 40);
    
    _progressView.progressTintColor = [UIColor redColor];
    
    _progressView.trackTintColor = [UIColor blackColor];
    
    _progressView.progress = 0.5;
    
    _progressView.progressViewStyle = UIProgressViewStyleDefault;
    
    [self.view addSubview:_progressView];
    
    _slider = [[UISlider alloc] init];
    
    _slider.frame = CGRectMake(10, 200, 300, 40);
    
    _slider.maximumValue = 100;
    
    _slider.minimumValue = 0;
    
    _slider.value = 50;
    
    _slider.minimumTrackTintColor = [UIColor blueColor];
    
    _slider.maximumTrackTintColor = [UIColor greenColor];
    
    _slider.thumbTintColor = [UIColor orangeColor];
    
    [_slider addTarget:self action:@selector(pressSlider) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_slider];
    
}

- (void) pressSlider {
    
    _progressView.progress = (_slider.value - _slider.minimumValue)/(_slider.maximumValue - _slider.minimumValue);
    
    NSLog(@"value = %f", _slider.value);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
