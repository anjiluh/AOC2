//
//  ViewController.h
//  week2
//
//  Created by Angela Ross on 5/20/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

{
    IBOutlet UIButton *countryButton;
    IBOutlet UIButton *popButton;
    IBOutlet UIButton *soulButton;
    IBOutlet UIButton *calculateButton;
    IBOutlet UIButton *infoButton;
    IBOutlet UISegmentedControl *segmentControl;
    IBOutlet UIStepper *stepperControl;
    int currentValue;
    IBOutlet UITextField *result;
    IBOutlet UILabel *stepperLabel;
}

-(IBAction)onClick:(id)sender;
-(IBAction)onChange:(id)sender;

@end
