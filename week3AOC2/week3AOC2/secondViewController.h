//
//  secondViewController.h
//  week3
//
//  Created by Angela Ross on 5/20/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol secondViewDelegate <NSObject>
@required
-(void)wasSaved:(NSString*)eventTitle dateString:(NSString*)date;
@end

@interface secondViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UIButton *closeKeyboard;
    IBOutlet UITextField *eventTitle;
    NSDate *eventDate;
    NSDateFormatter *dateFormatter;
    IBOutlet UIDatePicker *datePicker;
    NSString *dateString;
    id<secondViewDelegate> delegate;
    IBOutlet UIButton *saveButton;
}


-(IBAction)closeKeyboard:(id)sender;

-(IBAction)onChange:(id)sender;


-(IBAction)onSave:(id)sender;

@property (strong) id<secondViewDelegate> delegate;
@end
