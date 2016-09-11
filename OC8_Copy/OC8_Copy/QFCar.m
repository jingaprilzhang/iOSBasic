//
//  QFCar.m
//  OC8_Copy
//
//  Created by JING ZHANG on 9/9/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import "QFCar.h"

@implementation QFCar

@synthesize name = _name;
@synthesize year = _year;

-(void) setName:(NSString *)name {
    if (name != _name) {
        //[_name release];
        _name = [name copy];
    }
}

- (id) copyWithZone:(NSZone *)zone {
    QFCar *c = [[[self class] allocWithZone:zone] init];
    c.name = self.name;
    c.year = self.year;
    NSLog(@"car %@ year %d", c.name, c.year);
    return c;
}
@end