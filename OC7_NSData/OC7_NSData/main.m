//
//  main.m
//  OC7_NSData
//
//  Created by JING ZHANG on 9/8/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSString * str = @"hello world!";
        
        NSData * data = [str dataUsingEncoding:NSUTF8StringEncoding];
        
        NSString * newStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@", newStr);
    }
    return 0;
}
