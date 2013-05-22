//
//  secondViewController.h
//  week3
//
//  Created by Angela Ross on 5/20/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface secondViewController : UIViewController
{
    IBOutlet UIButton *closeKeyboard;
    IBOutlet UITextField *eventTitle;
}


-(IBAction)closeKeyboard:(id)sender;

-(IBAction)onChange:(id)sender;


-(IBAction)onSave:(id)sender;
@end
