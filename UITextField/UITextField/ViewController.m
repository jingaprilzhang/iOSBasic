//
//  ViewController.m
//  UITextField
//
//  Created by JING ZHANG on 9/16/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController

@synthesize textField = _textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.textField = [[UITextField alloc] init];
    
    self.textField.frame = CGRectMake(100, 100, 180, 40);
    
    self.textField.text = @"User Name";
    
    self.textField.font = [UIFont systemFontOfSize:15];
    
    self.textField.textColor = [UIColor blackColor];
    
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    
    self.textField.keyboardType = UIKeyboardTypeDefault;
    
    self.textField.placeholder = @"Please type username:";
    
    self.textField.secureTextEntry = NO;
    
    [self.view addSubview:self.textField];
    
    self.textField.delegate = self;
}

- (void) textFieldDidBeginEditing:(UITextField *)textField {
    
    NSLog(@"Begin Editing");
}

- (void) textFieldDidEndEditing:(UITextField *)textField {
    
    self.textField.text = @"";
    NSLog(@"End Editing");
}

- (BOOL) textFieldShouldBeginEditing:(UITextField *)textField {
    
    return YES;
}

- (BOOL) textFieldShouldEndEditing:(UITextField *)textField {
    
    return YES;
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.textField resignFirstResponder];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
