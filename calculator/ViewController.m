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

@implementation ViewController{
    NSInteger num1;
    NSInteger num2;
    BOOL flag;
    NSInteger symbol;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initWithButton];
    [self initWithNum];
    [self initWithFlag];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) initWithNum{
    num1 = 0;
    num2 = 0;
}

- (void) initWithFlag{
    flag = NO;
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
    
    self.btn0.layer.borderColor = [[UIColor grayColor] CGColor];
    self.btn0.layer.borderWidth = 2.0f;
    self.btn0.layer.cornerRadius = 10.0f;
    
    self.base.text = @"0";
    
}
- (IBAction)numButton:(UIButton*)sender {
    if(flag){
        num2 = num1;
        num1 = 0;
    }
    if(num1<99999999){
        num1 = num1*10 + sender.tag;
    }
    self.base.text = [NSString stringWithFormat:@"%ld",num1];
    flag = NO;
    
}
- (IBAction)AC:(id)sender {
    [self initWithNum];
    self.base.text = @"0";
    self.answor.text = @"0";
}
- (IBAction)plus:(id)sender {
    flag = YES;
    symbol = 1;
}
- (IBAction)equal:(id)sender {
    switch (symbol) {
        case 1:
            num1 = num1 + num2;
            break;
        case 2:
            num1 = num2 - num1;
        case 3:
            num1 = num1*num2;
        case 4:
            if(num1!=0){
                num1 = num2/num1;
            }else{
                num1 = 0;
            }
            
        default:
            break;
    }
    self.answor.text = [NSString stringWithFormat:@"%ld",num1];
}
- (IBAction)minutes:(id)sender {
    flag = YES;
    symbol = 2;
}
- (IBAction)cheng:(id)sender {
    flag = YES;
    symbol = 3;
}
- (IBAction)chu:(id)sender {
    flag = YES;
    symbol = 4;
}

@end
