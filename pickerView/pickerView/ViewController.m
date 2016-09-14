//
//  ViewController.m
//  pickerView
//
//  Created by JING ZHANG on 9/14/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIPickerView * pickerView = [[UIPickerView  alloc] init];
    
    pickerView.frame = CGRectMake(10, 100, 300, 200);
    
    pickerView.delegate = self;
    
    pickerView.dataSource = self;
    
    [self.view addSubview:pickerView];
    
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    return 3;
}

- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    if (component == 0) {
        return 5;
    } else if (component == 1){
        return 10;
    } else if (component == 2) {
        return 15;
    }
    return 3;
}

- (NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    NSString * str = [NSString stringWithFormat:@"%dColumn %dRow", component + 1, row + 1 ];
    return str;
}

- (CGFloat) pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {
    return 80;
}


- (UIView*) pickView: (UIPickerView *)pickerView viewForRow: (NSInteger)row forComponent:(NSInteger)component reusingView: (UIView *)view {
    
    UIImage * image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.png", (row)%7 + 1]];
    
    UIImageView * iView = [[UIImageView alloc] initWithImage:image];
    
    iView.frame = CGRectMake(0, 0, 80, 80);
    
    return iView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
