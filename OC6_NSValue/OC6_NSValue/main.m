//
//  main.m
//  OC6_NSValue
//
//  Created by JING ZHANG on 9/8/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>
struct sct {
    int a;
    int b;
}sctt = {4, 5};

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
//        NSValue * value = [[NSValue alloc]initWithBytes:&sctt objCType:@encode(struct sct)];
//        
//        if (strcmp(value.objCType, @encode(struct sct)) == 0){
//             NSLog(@"it is struct sct");
//        }
       
        CGPoint point;
        CGSize size;
        CGRect rect;
        
        NSValue * pointValue = [NSValue valueWithPoint:point];
        NSValue * sizeValue = [NSValue valueWithSize:size];
        NSValue * rectValue = [NSValue valueWithRect:rect];
        NSValue * rangeValue = [NSValue valueWithRange:NSMakeRange(2, 10)];
    }
    return 0;
}
