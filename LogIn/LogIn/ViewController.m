//
//  ViewController.m
//  LogIn
//
//  Created by JING ZHANG on 9/16/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _lbUserName = [[UILabel alloc] init];
    
    _lbUserName.frame = CGRectMake(20, 60, 80, 40);
    
    _lbUserName.text = @"User Name:";
    
    _lbUserName.font = [UIFont systemFontOfSize:20];
    
    _lbUserName.textAlignment = NSTextAlignmentLeft;
    
    
    _lbPassword = [[UILabel alloc] init];
    
    _lbPassword.frame = CGRectMake(20, 140, 80, 40);
    
    _lbPassword.text = @"Password:";
    
    _lbPassword.font = [UIFont systemFontOfSize:20];
    
    _lbPassword.textAlignment = NSTextAlignmentLeft;
    
    
    _tfUserName = [[UITextField alloc] init];
    
    _tfUserName.frame = CGRectMake(120, 60, 180, 40);
    
    _tfUserName.placeholder = @"Please type user name:";
    
    _tfUserName.borderStyle = UITextBorderStyleRoundedRect;
    
    
    _tfPassword = [[UITextField alloc] init];
    
    _tfPassword.frame = CGRectMake(120, 140, 180, 40);
    
    _tfPassword.placeholder = @"Please type user name:";
    
    _tfPassword.borderStyle = UITextBorderStyleRoundedRect;
    
    _tfPassword.secureTextEntry = YES;
    
    
    _btLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    _btLogin.frame = CGRectMake(120, 300, 80, 40);
    
    [_btLogin setTitle:@"Login in" forState:UIControlStateNormal];
    
    [_btLogin addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    
    
    _btRegister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    _btRegister.frame = CGRectMake(120, 360, 80, 40);
    
    [_btRegister setTitle:@"Please register" forState:UIControlStateNormal];
    
    [_btRegister addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_lbUserName];
    
    [self.view addSubview:_lbPassword];
    
    [self.view addSubview:_tfUserName];
    
    [self.view addSubview:_tfPassword];
    
    [self.view addSubview:_btLogin];
    
    [self.view addSubview:_btRegister];
}

- (void) pressLogin {
    
    NSString * strName = @ "Jing";
    
    NSString * strPass = @ "123";
    
    NSString * strTextName = _tfUserName.text;
    
    NSString * strTextPass = _tfPassword.text;
    
    
    if ([strName isEqualToString:strTextName] && [strPass isEqualToString:strTextPass]) {
        NSLog(@"Correct");
        
        UIAlertView * alertView = [[UIAlertView alloc] initWithTitle:@"Hint" message:@"Corrrect" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [alertView show];
        
    } else {
        
        UIAlertView * alertView = [[UIAlertView alloc] initWithTitle:@"Warning" message:@"Wrong UserName or Password" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [alertView show];
        
    }
}

- (void) pressRegister {
    
    
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [_tfUserName resignFirstResponder];
    
    [_tfPassword resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
