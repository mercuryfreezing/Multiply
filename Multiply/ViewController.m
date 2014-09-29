//
//  ViewController.m
//  Multiply
//
//  Created by roshan on 29/09/2014.
//  Copyright (c) 2014 learningIOS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *numberTextField;
@property (weak, nonatomic) IBOutlet UILabel *multiplierLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UISlider *sliderForMultiplier;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.sliderForMultiplier.minimumValue = 0.0;
    self.sliderForMultiplier.maximumValue = 10.0;

}
- (IBAction)sliderAction:(UISlider *)sender {

    //int num = (int)[NSString stringWithFormat:@"%f", self.sliderForMultiplier.value];
    self.multiplierLabel.text = [NSString stringWithFormat:@"%d", (int)self.sliderForMultiplier.value];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onCalculateButtonPressed:(UIButton *)sender {

    int enteredNumber = self.numberTextField.text.intValue;
    int multiplier = self.multiplierLabel.text.intValue;
    double answer = enteredNumber * multiplier;

    NSString *answer1 = [NSString stringWithFormat:@"%f", answer];
    self.answerLabel.text = answer1;

    if(answer >= 20)
    {
        self.view.backgroundColor = [UIColor greenColor];
    }
    else{
        self.view.backgroundColor = [UIColor whiteColor];
    }


    if((int)answer % 3 == 0 && (int)answer % 5 ==0)
    {
            self.answerLabel.text = @"FizzBuzz";
    }
    else if ((int) answer % 3 == 0)
    {
            self.answerLabel.text = @"Fizz";
    }
    else if ((int) answer % 5 == 0)
    {
            self.answerLabel.text = @"Buzz";
    }

    [_numberTextField resignFirstResponder];

}





@end
