//
//  main.m
//  OC8_Copy
//
//  Created by JING ZHANG on 9/9/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QFCar.m"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        NSString *s = [NSString stringWithFormat:@"hello world"];
        NSString *s2 = [s copy];
        
        NSLog(@"s2 is %@", s2);
        NSMutableString *s3 = [s mutableCopy];
        
        [s3 appendString:@"who"];
        NSLog(@"s3 is %@", s3);
        
        NSMutableString *s4 = [NSMutableString stringWithFormat:@"mutable string"];
        
        NSString *s5 = [s4 copy];
        
        QFCar * car = [[QFCar alloc] init];
        car.name = @"who";
        car.year = 2016;
        
        QFCar *car2 = [car copy];
    }
    return 0;
}
