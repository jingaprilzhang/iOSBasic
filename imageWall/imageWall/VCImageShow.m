//
//  VCImageShow.m
//  imageWall
//
//  Created by JING ZHANG on 9/14/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import "VCImageShow.h"

@interface VCImageShow ()

@end

@implementation VCImageShow

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Image Show";
    
    _imageView = [[UIImageView alloc] init];
    
    _imageView.frame = CGRectMake(0, 0, 320, 510);
    
    //method 2 to show image
   // _imageView.image = _image;
    
    //method 3 to show image
    _imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"17_%lu.jpg", _imageTag - 100]];
    
    [self.view addSubview:_imageView];
}

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
