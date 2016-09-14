//
//  ViewController.m
//  NSUserDefaults
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
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 100, 80, 40);
    
    [btn setTitle:@"Write file" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pressWrite) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    UIButton * btnRead = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btnRead.frame = CGRectMake(100, 200, 80, 40);
    
    [btnRead setTitle:@"Read file" forState:UIControlStateNormal];
    
    [btnRead addTarget:self action:@selector(pressRead) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btnRead];
    
}


- (void) pressWrite {
    
    NSUserDefaults * ud = [NSUserDefaults standardUserDefaults];
    
    [ud setObject:@"Michael" forKey:@"Name"];
    
    NSNumber* num = [NSNumber numberWithInt:100];
    
    [ud setObject:num forKey:@"Num"];
    
    //[ud setObject:self.view forKey:@"View"];
    
    [ud setInteger:124 forKey:@"Int"];
    
    [ud setBool:YES forKey:@"Bool"];
    
    [ud setFloat:1.555 forKey:@"Float"];
    
    NSArray * array = [NSArray arrayWithObjects:@"11", @"22", nil];
    
    [ud setObject:array forKey:@"Array"];
}

- (void) pressRead {
    
    NSUserDefaults * ud = [NSUserDefaults standardUserDefaults];
    
    id object = [ud objectForKey:@"Name"];
    
    NSString * name = (NSString *) object;
    
    NSLog(@"name = %@", name);
    
    object = [ud objectForKey:@"Num"];
    
    NSNumber* num = (NSNumber*) object;
    
    NSLog(@"num = %@",num);
    
    NSInteger iV = [ud integerForKey:@"Int"];
    
    NSLog(@"iV = %ld", iV);
    
    BOOL bV = [ud boolForKey:@"Bool"];
    
    float fV = [ud floatForKey:@"Float"];
    
    NSLog(@"bV = %d", bV);
    NSLog(@"fV = %f", fV);
    
    NSArray * array = [ud objectForKey:@"Array"];
    
    NSLog(@"array = %@", array);
    
    [ud removeObjectForKey:@"Array"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
