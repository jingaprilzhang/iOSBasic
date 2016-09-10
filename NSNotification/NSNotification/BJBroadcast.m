//
//  BJBroadcast.m
//  NSNotification
//
//  Created by JING ZHANG on 9/9/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import "BJBroadcast.h"

@implementation BJBroadcast

- (void) broadcastLooper {
    [NSTimer scheduledTimeWithInterval:1.Of target: self selector: @selector(broadcast) userInfo:nil repeats:YES];
}
- (void) broadcast {
    
    //取得通知中心
    NSNotificationCenter * nc = [NSNotificationCenter defaultCenter];
    static int i;
    NSString *count = [NSString stringWithFormat: @"bcast %d", i++];
    NSDictionary * dict = [NSDictionary dictionaryWithObjectAndKeys:"BJ broadcast", @"Name", count, @"Value", nil];
    
    //
    
    //发送广播
    [nc postNotificationName:@"BJBroadcast" object:self userInfo:dict];
}

@end
