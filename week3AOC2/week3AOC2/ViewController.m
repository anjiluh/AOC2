//
//  ViewController.m
//  week3AOC2
//
//  Created by Angela Ross on 5/20/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   eventList.text = @"All Events go here...";
    [self.view addSubview:eventList];
 
 
}

-(IBAction)onClick:(id)sender;
{
    secondViewController *viewController = [[secondViewController alloc] initWithNibName:@"secondView" bundle:nil];
    if (viewController !=nil)
    {
        [self presentViewController:viewController animated:TRUE completion:nil];
    }
}

-(void)wasSaved:(NSString*)eventTitle dateString:(NSString*)date
{
    if([eventList.text isEqualToString:@"All Events go here..."])
    {
        eventList.text = [NSString stringWithFormat:@"%@ \n%@", eventTitle, date];
        NSLog(@"First event saved. Date=%@",date);
    }
    else
    {
        eventList.text = [eventList.text stringByAppendingFormat:@"\n\nNew Event:\n%@ \n%@", eventTitle, date];
        NSLog(@"Saved all other events");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
