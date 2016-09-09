//
//  main.m
//  OC4_NSNumber
//
//  Created by JING ZHANG on 9/8/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
   
    @autoreleasepool {
        
        NSNumber * intNumber = [[NSNumber alloc] initWithInt:4];
        NSNumber * floatNumber = [[NSNumber alloc] initWithFloat:3.14f];
        NSNumber * doubleNumber = [[NSNumber alloc] initWithDouble:6.7];
        NSNumber * charNumber = [[NSNumber alloc]  initWithChar:'a'];
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
