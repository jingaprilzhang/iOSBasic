//
//  ViewController.h
//  UIGesture Advanced
//
//  Created by JING ZHANG on 9/16/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIGestureRecognizerDelegate>

{
    UIPinchGestureRecognizer * _pinchGes;
    
    UIRotationGestureRecognizer * _rotGes;
}

@end

