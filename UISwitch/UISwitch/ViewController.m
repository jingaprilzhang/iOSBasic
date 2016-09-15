//
//  ViewController.m
//  UISwitch
//
//  Created by JING ZHANG on 9/15/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize mySwitch = _mySwitch;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _mySwitch = [[UISwitch alloc] init];
    
    _mySwitch.frame = CGRectMake(100, 200, 180, 40);
    
  //  _mySwitch.on = YES;
    
  // [_mySwitch setOn:YES];
    
    [_mySwitch setOn:YES animated:YES];
    
    [self.view addSubview:_mySwitch];
    
    [_mySwitch setOnTintColor:[UIColor redColor]];
    
    [_mySwitch setThumbTintColor:[UIColor greenColor]];
    
    [_mySwitch setTintColor:[UIColor purpleColor]];
    
    [_mySwitch addTarget:self action:@selector(swChange:) forControlEvents:UIControlEventValueChanged];
}

- (void) swChange: (UISwitch *) sw {
    
    if (sw.on == YES){
        NSLog(@"Switch is on");
    } else {
        NSLog(@"Switch is off");
    }
    NSLog(@"Switch Change");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
