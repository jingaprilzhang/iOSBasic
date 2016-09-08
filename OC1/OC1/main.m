//
//  main.m
//  OC1
//
//  Created by JING ZHANG on 9/8/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
       
//        NSString * str = @"123";
//        NSString * str2 = @"234";
//
        /*
 比较字符串是否相等
 
 */
        
//        BOOL ret = [str isEqualToString:str2];
//        NSLog(@"%d", ret);
        
        /*
         比较字符串结果输出
         
         */
        
//        NSComparisonResult ret =  [str compare:str2];
//        
//        if (ret == NSOrderedAscending) {
//            NSLog(@"str < str2");
//        }else if (ret == NSOrderedSame) {
//            NSLog(@"str = str2");
//        }else if (ret == NSOrderedDescending){
//            NSLog(@"str > str2");
//        }
        
        
        NSMutableString * str = [[NSMutableString alloc] init];
        [str setString:@"hello"];
        [str setString:@"world"];
        
        [str appendString:@"123"];
        
        [str appendFormat:@"%c", 'D'];
        
        [str insertString:@"XXXX" atIndex:4];
        
        [str insertString: [NSString stringWithFormat:@"%d", -54] atIndex:7];
         NSLog(@"%@", str);
        
        [str replaceCharactersInRange:NSMakeRange(3, 2) withString:@"RRRRRRRR"];
        
        [str deleteCharactersInRange:NSMakeRange(3, 5)];
        
        NSLog(@"%@", str);
    }
    return 0;
}
