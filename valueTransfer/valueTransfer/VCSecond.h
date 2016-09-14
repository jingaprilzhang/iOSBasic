//
//  VCSecond.h
//  valueTransfer
//
//  Created by JING ZHANG on 9/14/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol VCSecondDelegate <NSObject>


- (void) changeColor: (UIColor *) color;

@end

@interface VCSecond : UIViewController

@property(assign, nonatomic) NSInteger tag;

@property(assign, nonatomic) id <VCSecondDelegate> delegate;


@end
