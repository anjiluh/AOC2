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
    
    //default actions
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if(defaults !=nil)
    {
        NSString *eventString = [defaults objectForKey:@"list"];
        if(eventString !=nil)
        {
            eventList.text = eventString;
        }
        else
        {
            eventList.text = @"All Events go here.";
            [self.view addSubview:eventList];
        }
    }
 
}

-(void)viewDidAppear:(BOOL)animated
{
    swipeOpen = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    swipeOpen.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabel addGestureRecognizer:swipeOpen];
}

-(IBAction)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0f];
    
    if(recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        secondViewController *viewController = [[secondViewController alloc] initWithNibName:@"secondView" bundle:nil];
        if (viewController !=nil)
        {
            viewController.delegate = self;
            [self presentViewController:viewController animated:TRUE completion:nil];
        }
        NSLog(@"You should be moving into the second view");
    }
   [UIView commitAnimations];
}

-(IBAction)onSave:(id)sender;
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if (defaults !=nil)
    {
        NSString *eventString = eventList.text;
        if(eventString != nil)
        {
            [defaults setObject:eventString forKey:@"list"];
        }
        [defaults synchronize];
    }
}

-(void)wasSaved:(NSString*)eventTitle dateString:(NSString*)date
{
    if([eventList.text isEqualToString:@"All Events go here."])
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
