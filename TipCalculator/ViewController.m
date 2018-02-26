//
//  ViewController.m
//  TipCalculator
//
//  Created by KevinT on 2018-02-23.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "ViewController.h"

float floatTipAmount;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *numberOfPeople;
@property (weak, nonatomic) IBOutlet UISlider *numberOfPeopleSlider;
@property (weak, nonatomic) IBOutlet UITextField *splitAmount;

@end

@implementation ViewController

- (IBAction)sliderValueChanged:(id)sender {
  self.numberOfPeople.text = [NSString stringWithFormat:@"%d", (int) self.numberOfPeopleSlider.value];
}

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  self.tipAmountLabel.text = @"0";
  self.tipPercentageTextField.text = @"0";
  self.numberOfPeople.text = @"2";
}
- (IBAction)calculateSplitAmount:(id)sender {
  
  
  NSString *stringBillAmount = [self.billAmountTextField text];
  float floatBillAmount = [stringBillAmount floatValue];

  float floatNumberOfPeople = (int) self.numberOfPeopleSlider.value;
  
  floatTipAmount = [self.tipAmountLabel.text floatValue];
  
  float floatSplitAmount = ( floatBillAmount + floatTipAmount )/ floatNumberOfPeople;
  
  self.splitAmount.text = [NSString stringWithFormat:@"%.2f", floatSplitAmount];
}

- (void)viewDidAppear:(BOOL)animated {
  self.tipPercentageTextField.keyboardType = UIKeyboardTypeDecimalPad;
  self.billAmountTextField.keyboardType = UIKeyboardTypeDecimalPad;

  [self.tipPercentageTextField becomeFirstResponder];
  [self.billAmountTextField becomeFirstResponder];
  
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)calculateTip:(id)sender {
  
  NSString *stringBillAmount = [self.billAmountTextField text];
  float floatBillAmount = [stringBillAmount floatValue];
  
  NSString *stringTipPercentage = [self.tipPercentageTextField text];
  float floatTipPercentage = [stringTipPercentage floatValue];
  
  floatTipAmount = floatBillAmount * floatTipPercentage / 100;
  
  NSString *stringTipAmount = [NSString stringWithFormat:@"%.2f", floatTipAmount];
//  NSLog(@"%@", stringTipAmount);
  self.tipAmountLabel.text = stringTipAmount;
}

@end
