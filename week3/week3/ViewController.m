//
//  ViewController.m
//  week3
//
//  Created by Angela Ross on 5/20/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender;
{
    secondViewController *viewController = [[secondViewController alloc] initWithNibName:@"secondView" bundle:nil];
    if (viewController !=nil)
    {
        [self presentModalViewController:viewController animated:TRUE];
    }
}

@end
