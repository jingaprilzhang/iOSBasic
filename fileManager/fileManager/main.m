//
//  main.m
//  fileManager
//
//  Created by JING ZHANG on 9/9/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#define PATH @ "/Users/jingzhang/Desktop"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSFileManager * fm = [NSFileManager defaultManager];
        
        NSError * error = nil;
        
        //浅度遍历
        NSArray * array = [fm contentsOfDirectoryAtPath:PATH error:&error];
        
        if (error) {
            NSLog(@"%@", error);
            exit(-1);
        }
        
        
        //深度遍历
        NSLog(@"%@", array);
        
        [fm createDirectoryAtPath:[NSString stringWithFormat:@"%@/middle/dir", PATH] withIntermediateDirectories:YES attributes:nil error:&error];
        
        if (error) {
            NSLog(@"%@", error);
            exit(-1);
        }
        
        [fm createFileAtPath:[NSString stringWithFormat:@"@/middle/dir/file", PATH] contents:[@"hello" dataUsingEncoding:NSUTF8StringEncoding] attributes:nil];
        
    }
    return 0;
}
