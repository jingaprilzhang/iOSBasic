//
//  ViewController.m
//  UIButton
//
//  Created by JING ZHANG on 9/12/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) createUIRectButton {
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 100, 100, 40);
    
    [btn setTitle:@"Button 1" forState:UIControlStateNormal];
    
    [btn setTitle:@"Button Pressed" forState:UIControlStateHighlighted];
    
    btn.backgroundColor = [UIColor grayColor];
    
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateHighlighted];
    
    //[btn setTintColor:[UIColor whiteColor]];
    
    btn.titleLabel.font = [UIFont systemFontOfSize:12];
    
    [self.view addSubview:btn];
}

- (void) createImageBtn {
    UIButton * btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btnImage.frame = CGRectMake(100, 200, 100, 100);
    
    UIImage * icon01 = [UIImage imageNamed:@"btn01"];
    
    UIImage * icon02 = [UIImage imageNamed:@"btn02"];
    
    [btnImage setImage:icon01 forState:UIControlStateNormal];
    
    [btnImage setImage:icon02 forState:UIControlStateHighlighted];
    
    [self.view addSubview:btnImage];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createUIRectButton];
    
    [self createImageBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
