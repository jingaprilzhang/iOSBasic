//
//  ViewController.m
//  NSURLConnect
//
//  Created by JING ZHANG on 9/12/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 100, 80, 40);
    
    [btn setTitle:@"connect data" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pressBtn) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    

}

- (void) pressBtn {
    NSLog(@"press button");
    
    NSString * strURL = @"http://www.baidu.com";
    
    NSURL * url = [NSURL URLWithString:strURL];
    
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    
    _connect = [NSURLConnection connectionWithRequest:request delegate:self];

    _data = [[NSMutableData alloc] init];
    
}

- (void) connection: (NSURLConnection *)connection didFailWithError:(nonnull NSError *)error {
    
    NSLog(@"error = %@", error);
}


- (void) connection: (NSURLConnection *)connection didReceiveResponse:(nonnull NSURLResponse *)response {
    
    NSHTTPURLResponse * res = (NSHTTPURLResponse *) response ;
    
    if (res.statusCode == 200) {
        NSLog(@"Connect Success");
    } else if (res.statusCode ==404) {
        NSLog(@"Connection URL not Found");
    } else if (res.statusCode == 500){
        NSLog(@"Server shut down");
    }
}

- (void) connection: (NSURLConnection *)connection didReceiveData:(nonnull NSData *)data {
    
    [_data appendData: data];
}

- (void) connectionDidFinishLoading:(NSURLConnection *) connection {

    NSString * str = [[NSString alloc]initWithData:_data encoding:NSUTF8StringEncoding];
    
    NSLog(@"baidu page == %@",str);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
