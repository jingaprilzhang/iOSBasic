//
//  ViewController.m
//  UIView
//
//  Created by JING ZHANG on 9/14/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView * view = [[UIView alloc] init];
    
    view.frame = CGRectMake(200, 100, 100, 200);
    
    view.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:view];
    
    view.hidden = NO;
    
    view.alpha = 1;
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    view.opaque = NO;
    
    [view removeFromSuperview];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
