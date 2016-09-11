//
//  QFCar.h
//  OC8_Copy
//
//  Created by JING ZHANG on 9/9/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QFCar : NSObject
<NSCopying, NSMutableCopying>
{
    NSString *name;
    int _year;
}

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign)int year;

@end
