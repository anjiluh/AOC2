//
//  ViewController.h
//  week3
//
//  Created by Angela Ross on 5/20/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "secondViewController.h"

@interface ViewController : UIViewController
{
    IBOutlet UITextView *textView;
    IBOutlet UIButton *addEvent;
}

-(IBAction)onClick:(id)sender;

@end