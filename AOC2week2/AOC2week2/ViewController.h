//
//  ViewController.h
//  AOC2week2
//
//  Created by Angela Ross on 5/14/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "musicFactory.h"

@interface ViewController : UIViewController <UITextFieldDelegate>

{
    IBOutlet UIButton *countryButton;
    IBOutlet UIButton *popButton;
    IBOutlet UIButton *soulButton;
    IBOutlet UIButton *calculateButton;
    IBOutlet UIButton *infoButton;
    
}

-(IBAction)onClick:(id)sender;

@end
