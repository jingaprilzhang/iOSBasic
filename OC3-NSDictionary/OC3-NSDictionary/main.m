//
//  main.m
//  OC3-NSDictionary
//
//  Created by JING ZHANG on 9/8/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        NSMutableDictionary * dict = [[NSMutableDictionary alloc] init];
        
        [dict setObject:@"One" forKey:@"1"];
        [dict setObject:@"Two" forKey:@"2"];
        
        NSLog(@"%@", dict);
        
        [dict removeObjectForKey:@"1"];
        
         NSLog(@"%@", dict);
        
     //   [dict release];
    }
    return 0;
}
