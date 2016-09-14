//
//  VCRoot.m
//  imageWall
//
//  Created by JING ZHANG on 9/14/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import "VCRoot.h"
#import "VCImageShow.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Image Wall";
    
   // self.navigationController.navigationBar.barTintColor = [UIColor purpleColor];
    
    self.navigationController.navigationBarHidden = NO;
    
    self.navigationController.navigationBar.translucent = NO;
    
   //scroll view set up
    
    UIScrollView * sv = [[UIScrollView alloc] init];
    
    sv.frame = CGRectMake(10, 10, 300, 480);
    
    sv.contentSize = CGSizeMake(300, 480*1.5);
    
    sv.showsVerticalScrollIndicator = NO;
    
    sv.userInteractionEnabled = YES;
    
    self.view.backgroundColor = [UIColor blackColor];
    
    for (int i = 0; i < 15; i++) {
        
        NSString * strName = [NSString stringWithFormat:@"17_%d.jpg", i+1];
        
        UIImage * image = [UIImage imageNamed:strName];
        
        UIImageView * iView = [[UIImageView alloc] initWithImage:image];
        
        iView.frame = CGRectMake(3 + (i%3)*100, (i/3)*140 + 10, 90, 130);
        
        [sv addSubview:iView];
        
        iView.userInteractionEnabled = YES;
        
        UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pressTap:)];
        
        //single tap
        tap.numberOfTapsRequired = 1;
        
        //single touch
        tap.numberOfTouchesRequired = 1;
        
        [iView addGestureRecognizer:tap];
        
        //image tag value
        iView.tag = 101 + i;
        
    }
    
    [self.view addSubview:sv];
}


- (void) pressTap: (UITapGestureRecognizer *)tap {
    
    // NSLog(@"Click initiate");
    
    UIImageView * imageView = (UIImageView *)tap.view;
    
    VCImageShow * imageShow = [[VCImageShow alloc] init];
    
    imageShow.imageTag = imageView.tag;
    
    [self.navigationController pushViewController:imageView animated:YES];
}

/* Method 2 to show image
 
- (void) pressTap: (UITapGestureRecognizer *)tap {
 
 // NSLog(@"Click initiate");
 
 UIImageView * imageView = (UIImageView *)tap.view;
 
 VCImageShow * imageShow = [[VCImageShow alloc] init];
 
    imageShow.image = imageView.image;
    
    [self.navigationController pushViewController:imageShow animated:YES];
    
}
 */

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
