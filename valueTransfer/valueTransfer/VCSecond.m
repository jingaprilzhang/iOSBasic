//
//  VCSecond.m
//  valueTransfer
//
//  Created by JING ZHANG on 9/14/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import "VCSecond.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIBarButtonItem * btnChange = [[UIBarButtonItem alloc] initWithTitle:@"change color" style:UIBarButtonItemStyleDone target:self action:@selector(pressChange)];
    
    self.navigationItem.rightBarButtonItem = btnChange;
    
}


- (void) pressChange {
    
    [_delegate changeColor:[UIColor purpleColor]];
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
