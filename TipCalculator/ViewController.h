//
//  ViewController.h
//  TipCalculator
//
//  Created by KevinT on 2018-02-23.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;

@end

