//
//  ViewController.m
//  TipCalculator
//
//  Created by KevinT on 2018-02-23.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)calculateTip:(id)sender {
//  float tipAmountFloat =
//  float billAmountFloat =
  NSString *stringBillAmount = [self.billAmountTextField text];
  float floatBillAmount = [stringBillAmount floatValue];
  NSString *stringTipPercentage = [self.tipPercentageTextField text];
  float floatTipPercentage = [stringTipPercentage floatValue];
  
  float floatTipAmount = floatBillAmount * floatTipPercentage / 100;
  
  NSString *stringTipAmount = [NSString stringWithFormat:@"%.2f", floatTipAmount];
  NSLog(@"%@", stringTipAmount);
  self.tipAmountLabel.text = stringTipAmount;
}

@end
