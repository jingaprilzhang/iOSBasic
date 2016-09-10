//
//  main.m
//  NSNotification
//
//  Created by JING ZHANG on 9/9/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Listener.h"
#import "BJBroadcast.h"

int main(int argc, const char * argv[]) {
    
    //BJBroadcast
    //Audience
    @autoreleasepool {
        
        BJBroadcast *bj = [[BJBroadcast alloc]init];
        [bj broadcastLooper];
        
        Listener *l = [[Listener alloc]init];
        [l wantToListen];
        
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}
