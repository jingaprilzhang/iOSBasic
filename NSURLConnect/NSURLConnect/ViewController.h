//
//  ViewController.h
//  NSURLConnect
//
//  Created by JING ZHANG on 9/12/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<

NSURLConnectionDataDelegate,

NSURLConnectionDelegate

>

{
    
    NSURLConnection * _connect;
    
    NSMutableData * _data;
}

@end

