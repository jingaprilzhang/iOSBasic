//
//  main.m
//  NSString
//
//  Created by JING ZHANG on 9/22/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString * str1 = [NSString stringWithFormat:@"%@", @"hello world"];
        
        NSString * str2 = [NSString stringWithUTF8String:"hello world"];
        
        NSComparisonResult ret1 = [str1 compare:str2];
        
        if (ret1 == NSOrderedAscending) {
            NSLog(@"str1 less than str2");
        } else if (ret1 == NSOrderedSame) {
            NSLog(@"str1 equal to str2");
        } else if (ret1 == NSOrderedDescending) {
            NSLog(@"str1 more than str2");
        }
        
        
        NSString * str3 = @"welcome TO China";
        
        NSString * str4 = @"welome to china";
        
        NSComparisonResult ret2 = [str3 caseInsensitiveCompare:str4];
        
        if (ret2 == NSOrderedAscending) {
            NSLog(@"str3 less than str4");
        }else if (ret2 == NSOrderedDescending) {
            NSLog(@"str3 equal to str4");
        }else if (ret2 == NSOrderedDescending) {
            NSLog(@"str3 more than str4");
        }
        
        
        NSComparisonResult ret3 = [str3 compare:str4 options:NSCaseInsensitiveSearch];
        
        if (ret3 == NSOrderedAscending) {
            NSLog(@"str3 less than str4");
        }else if (ret3 == NSOrderedDescending) {
            NSLog(@"str3 equal to str4");
        }else if (ret3 == NSOrderedDescending) {
            NSLog(@"str3 more than str4");
        }
        
        
        NSString * str5 = [NSString stringWithCString:"how are you" encoding:NSUTF8StringEncoding];
        
        NSString * str6 = [NSString stringWithUTF8String:"how are you"];
        
        BOOL ret4 = [str5 isEqualToString:str6];
        
        if (ret4 == YES) {
            NSLog(@"str5 equal to str6");
        } else {
            NSLog(@"str5 not equal to str6");
        }
        
        
        BOOL ret5 = [@"www.baidu.com" hasPrefix:@"www"];
        
        if (ret5 == YES) {
            NSLog(@"begin with www");
        } else {
            NSLog(@"not begin with www");
        }
        
        BOOL ret6 = [@"www.baidu.com" hasSuffix:@"com"];
        
            NSLog(@"ret6 = %i", ret6);
        
        
        NSString * str7 = @"baidu";
        
        NSString * str8 = [str7 stringByAppendingString:@".com"];
        
        NSLog(@"str7 = %@", str7);
        
        NSLog(@"str8 = %@", str8);
        
        NSString * str9 = [str7 stringByAppendingFormat:@"%d%s", 123, "hello world"];
        
        NSLog(@"str9 = %@", str9);
        
        NSString * str10 = @"www.hao123.com";
        
        NSLog(@"subString = %@", [str10 substringFromIndex:4]);
        
        NSLog(@"subString = %@", [str10 substringToIndex:10]);
        
        
        NSRange range1 = {4, 6};
        
        NSLog(@"subString = %@",[str10 substringWithRange:range1]);
        
        NSLog(@"subString = %@",[str10 substringWithRange:NSMakeRange(4, 6)]);
        
        NSString * str11 = @"bai du hello world bai du";
        
        NSRange range2 = [str11 rangeOfString:@"du"];
        
        if (range2.location == NSNotFound) {
            NSLog(@"not found");
        }else {
            NSLog(@"Location = %lu, length = %lu", range2.location, range2.length);
        }
        
        NSRange range3 = [str11 rangeOfString:@"du" options:NSBackwardsSearch];
        
        NSLog(@"Location = %li, length = %li", range3.location, range3.length);
        
        NSRange range4 = [str11 rangeOfString:@"du" options:NSLiteralSearch range:NSMakeRange(7, 14)];
        
        NSLog(@"Location = %lu, length = %lu", range4.location, range4.length);
    }
    
    return 0;
}
