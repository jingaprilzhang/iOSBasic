//
//  main.m
//  OC2-NSArray
//
//  Created by JING ZHANG on 9/8/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        
        NSLog(@"Hello, World!");
        
        NSMutableArray * array = [[NSMutableArray alloc]initWithObjects:@"One", @"Two", @"Three", nil];
        
        [array addObject:@"Four"];
        
        [array removeObject:@"Two"];
        
        [array exchangeObjectAtIndex:0 withObjectAtIndex:2];
        
        NSLog(@"%@", array);//print all elements
        
        
        //enum
        
        NSEnumerator * enumerator = [array objectEnumerator];
        id obj;
        while (obj = [enumerator nextObject]) {
            NSLog(@"%@", obj);
            
        }
        
        //fast enum
        for (id obj in array) {
            NSLog(@"%@", obj);
        }
        
        //use i cycle
        
        NSUInteger length = [array count];
        obj = [array objectAtIndex: 2];
        
        NSInteger i;
        for(i = 0; i < length; i++){
            NSLog(@"%@", [array objectAtIndex:i]);
        }
    }
    return 0;
}
