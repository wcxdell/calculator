//
//  ViewController.m
//  calculator
//
//  Created by 王长旭 on 15/8/24.
//  Copyright (c) 2015年 王长旭. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initWithButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) initWithButton{
    self.btn1.layer.borderColor = [[UIColor grayColor] CGColor];
    self.btn1.layer.borderWidth = 2.0f;
    self.btn1.layer.cornerRadius = 10.0f;
    
    self.btn2.layer.borderColor = [[UIColor grayColor] CGColor];
    self.btn2.layer.borderWidth = 2.0f;
    self.btn2.layer.cornerRadius = 10.0f;
    
    self.btn3.layer.borderColor = [[UIColor grayColor] CGColor];
    self.btn3.layer.borderWidth = 2.0f;
    self.btn3.layer.cornerRadius = 10.0f;
    
    self.btn4.layer.borderColor = [[UIColor grayColor] CGColor];
    self.btn4.layer.borderWidth = 2.0f;
    self.btn4.layer.cornerRadius = 10.0f;
    
    self.btn5.layer.borderColor = [[UIColor grayColor] CGColor];
    self.btn5.layer.borderWidth = 2.0f;
    self.btn5.layer.cornerRadius = 10.0f;
    
    self.btn6.layer.borderColor = [[UIColor grayColor] CGColor];
    self.btn6.layer.borderWidth = 2.0f;
    self.btn6.layer.cornerRadius = 10.0f;
    
    self.btn7.layer.borderColor = [[UIColor grayColor] CGColor];
    self.btn7.layer.borderWidth = 2.0f;
    self.btn7.layer.cornerRadius = 10.0f;
    
    self.btn8.layer.borderColor = [[UIColor grayColor] CGColor];
    self.btn8.layer.borderWidth = 2.0f;
    self.btn8.layer.cornerRadius = 10.0f;
    
    self.btn9.layer.borderColor = [[UIColor grayColor] CGColor];
    self.btn9.layer.borderWidth = 2.0f;
    self.btn9.layer.cornerRadius = 10.0f;
    
}
- (IBAction)numButton:(id)sender {
    NSLog(@"%@", );
}

@end
