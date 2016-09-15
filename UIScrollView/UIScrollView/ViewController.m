//
//  ViewController.m
//  UIScrollView
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
    
    UIScrollView * sv = [[UIScrollView alloc] init];
    
    sv.frame = CGRectMake(0, 0, 320, 576);
    
    sv.pagingEnabled = YES;
    sv.scrollEnabled = YES;
    sv.contentSize = CGSizeMake(320 * 5, 576);
    sv.bounces = YES;
    sv.alwaysBounceHorizontal = YES;
    sv.alwaysBounceVertical = YES;
    sv.showsHorizontalScrollIndicator = YES;
    sv.showsVerticalScrollIndicator = YES;
    
    sv.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:sv];
    
    for (int i = 0; i < 5; i ++) {
        
        NSString * strName = [NSString stringWithFormat:@"%d.jpg", i+1];
        
        UIImage * image = [UIImage imageNamed:strName];
        
        UIImageView * iView = [[UIImageView alloc] initWithImage:image];
        
        iView.frame = CGRectMake(320 * i, 0, 320, 576);
        
        [sv addSubview:iView];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
