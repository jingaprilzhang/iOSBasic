//
//  ViewController.h
//  UISlider
//
//  Created by JING ZHANG on 9/15/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    UIProgressView * _progressView;
    
    UISlider* _slider;
    
}

@property (retain, nonatomic) UIProgressView * pView;
@property (retain, nonatomic) UISlider * slider;

@end

