//
//  main.m
//  OC5_NSSet
//
//  Created by JING ZHANG on 9/8/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        NSSet * set1 = [[NSSet alloc] initWithObjects:@"One", @"Two", @"Four", @"Three", @"Three", nil];
        
        NSSet * set2 = [[NSSet alloc] initWithObjects:@"One", @"Two", @"Three", @"Four", nil];
        
       // BOOL ret = [set1 isEqualToSet: set2];
         BOOL ret = [set1 isSubsetOfSet: set2];
        
        NSLog(@"%d", ret);
        
        NSLog(@"%@", set1);
        
        
        NSIndexSet * indexSet = [[NSIndexSet alloc] initWithIndexesInRange:NSMakeRange(2, 4)];
        
        NSArray * array = [[NSArray alloc] initWithObjects:@"One", @"Two", @"Three", @"Four",@"Five", @"Six", nil];
        
        NSArray * newArray = [array objectsAtIndexes:indexSet];
        
        NSLog(@"%@", newArray);
    }
    return 0;
}
