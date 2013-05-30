//
//  ViewController.h
//  week3AOC2
//
//  Created by Angela Ross on 5/20/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "secondViewController.h"

@interface ViewController : UIViewController <secondViewDelegate>
{
    IBOutlet UITextView *eventList;
    
    IBOutlet UILabel *swipeLabel;
    UISwipeGestureRecognizer *swipeOpen;
    IBOutlet UIButton *saveButton;
}

-(IBAction)onSwipe:(UISwipeGestureRecognizer*)recognizer;
-(IBAction)onSave:(id)sender;


@end
