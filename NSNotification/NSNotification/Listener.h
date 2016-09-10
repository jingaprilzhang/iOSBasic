
//
//  Listener.h
//  NSNotification
//
//  Created by JING ZHANG on 9/9/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Listener : NSObject

-(void) wantToListen {
    
    //register
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(recvBcast:) name:@"BJBroadcast" object:nil];
    
    //param1 param2
    
    -(void) recvBcast:(NSNotification *)notify {
        NSString *name = 
    }
}

@end
