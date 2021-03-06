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
@property (weak, nonatomic) IBOutlet UISegmentedControl *operatorLabel;
@property (weak, nonatomic) NSString *operator;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.sliderForMultiplier.minimumValue = 0.0;
    self.sliderForMultiplier.maximumValue = 10.0;

    //Converting a integer to a String.
    int val = self.sliderForMultiplier.value;
    NSString *stringValue = [NSNumber numberWithInt:val].description;
    self.multiplierLabel.text = stringValue;



}
- (IBAction)sliderAction:(UISlider *)sender {

    //int num = (int)[NSString stringWithFormat:@"%f", self.sliderForMultiplier.value];
    self.multiplierLabel.text = [NSString stringWithFormat:@"%d", (int)self.sliderForMultiplier.value];
}


//- (IBAction)segmentAction:(UISegmentedControl *)sender {
//
//    switch ([sender selectedSegmentIndex])
//    {
//        case 0:
//
//            self.operator = @"+";
//            break;
//        case 1:
//            self.operator = @"/";
//            break;
//        case 2:
//            self.operator = @"-";
//            break;
//        case 3:
//            self.operator = @"*";
//            break;
//        default:
//            break;
//    }
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onCalculateButtonPressed:(UIButton *)sender {

    double answer;
    int enteredNumber = self.numberTextField.text.intValue;
    int multiplier = self.multiplierLabel.text.intValue;


    if(self.operatorLabel.selectedSegmentIndex == 0)
    {
              answer = enteredNumber + multiplier;
    }
    else if (self.operatorLabel.selectedSegmentIndex == 1)
    {
              answer = enteredNumber / multiplier;
    }
    else if (self.operatorLabel.selectedSegmentIndex == 2)
    {
        answer = enteredNumber - multiplier;
    }
    else if (self.operatorLabel.selectedSegmentIndex == 3)
    {

    }        answer = enteredNumber * multiplier;

//
//    if([_operator isEqualToString:@"+"])
//      answer = enteredNumber + multiplier;
//    else if ([_operator isEqualToString:@"/"])
//        answer = enteredNumber /multiplier;
//    else if ([_operator isEqualToString:@"-"])
//                answer = enteredNumber - multiplier;
//    else if ([_operator isEqualToString:@"*"])
//                answer = enteredNumber * multiplier;


     //answer = enteredNumber * multiplier;



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

    [self.view endEditing:YES];
    [_numberTextField endEditing:YES];

}





@end
