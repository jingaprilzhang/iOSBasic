//
//  VCImageShow.h
//  imageWall
//
//  Created by JING ZHANG on 9/14/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCImageShow : UIViewController

@property(nonatomic, assign) NSUInteger imageTag;
@property(nonatomic, retain) UIImage* image;
@property(nonatomic, retain)UIImageView * imageView;

@end
