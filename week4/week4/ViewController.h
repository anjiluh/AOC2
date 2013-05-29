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
    
    IBOutlet UILabel *swipeToOpen;
    UISwipeGestureRecognizer *swipeOpen;
}

-(IBAction)onClick:(id)sender;
-(IBAction)onSwipe:(UISwipeGestureRecognizer*)recognizer;


@end
