//
//  ViewController.m
//  week2
//
//  Created by Angela Ross on 5/20/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "musicFactory.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    //default info
 //   int selectedIndex = segmentControl.selectedSegmentIndex;
    
    //default textfield
    result.text = (@"Default band");
    
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
    UIButton *button = (UIButton*)sender;
    
    
    if (button != nil)
    {
        if (button.tag == 0)
        {
            countryButton.enabled = false;
            popButton.enabled = true;
            soulButton.enabled = true;
            NSLog(@"You selected Country");
            result.text = @"Country";
        }
        else if (button.tag == 1)
        {
            popButton.enabled = false;
            soulButton.enabled = true;
            countryButton.enabled = true;
            NSLog(@"You selected Pop");
            result.text = @"Pop";
        }
        else if (button.tag == 2)
        {
            soulButton.enabled = false;
            popButton.enabled = true;
            countryButton.enabled = true;
            NSLog(@"You selected Soul");
            result.text = @"Soul";
        }
        
        
        else if(button.tag == 3)
        {
            NSLog(@"You have selected Calculate");
            if(countryButton.enabled == false)
            {
                //create a country music band
                countryMusic *ladyAntebellum = (countryMusic*)[musicFactory createNewMusic:COUNTRY];
                [ladyAntebellum setAmountOfAccousticGuitars:3];
                
                
                //set members names, set lists, and music output to log
                if (ladyAntebellum !=nil)
                {
                    NSArray *countryMembers = [[NSArray alloc] initWithObjects:@"Hillary Scott", @"Charles Kelley", @"Dave Hayewood", nil];
                    [ladyAntebellum setMembers:countryMembers];
                    
                    NSString *countrySetList = @"The band will sing, top performed songs 'Need you now' and 'Lookin for a good time'.";
                    [ladyAntebellum setSetList:countrySetList];
                    
                    //calculate and log studio time based upon play time
                    [ladyAntebellum calculateStudioTime];
                    
                    int countryStudioTime = ladyAntebellum.studioTimeHours * currentValue;
                    
                    result.text = [NSString stringWithFormat:@"Country band will need %d hours to record", countryStudioTime];
                }
            }
            else if (popButton.enabled == false)
            {
                //create a pop music band and set artist
                popMusic *justinBieber = (popMusic*)[musicFactory createNewMusic:POP];
                
                [justinBieber setAmountOfFans:1000];
                [justinBieber setTotalSecurityGuards:10];
                //calculate amount of studio time needed
                [justinBieber calculateStudioTime];
                //tally final studio time
                int studioTime = justinBieber.studioTimeHours + currentValue;
                NSLog(@"There is %d studio time", studioTime);
                
                result.text = [NSString stringWithFormat:@"Pop singer needs %d hours", studioTime];
            }
            
            else if (soulButton.enabled == false)
            {
                //create a soul music band and determine amount of choir members and band members
                soulMusic *aliciaKeys = (soulMusic*)[musicFactory createNewMusic:SOUL];
                
                if (aliciaKeys !=nil)
                {
                    [aliciaKeys setAmountOfChoirMembers:0];
                    [aliciaKeys setAmountofBandMembers:3];
                    
                    //calculate and log studio time
                    [aliciaKeys calculateStudioTime];
                    int soulStudioTime = aliciaKeys.studioTimeHours + currentValue;
                    
                    NSLog(@"Alicia keys needs %d hours in the studio", soulStudioTime);
                    result.text = [NSString stringWithFormat:@"Soul Music will need %d", soulStudioTime];
                }
            }
            else
            {
                NSLog(@"All buttons are enabled.");
            }
        }
    
    
    
    else if (button.tag == 5 )
    {
        SecondViewController *viewController = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
        if(viewController != nil )
        {
            //         viewController.delegate = self;
            [self presentViewController:viewController animated:TRUE completion:nil];
            
        }
        
        
        infoButton.enabled = true;
        NSLog(@"You selected the info button.");
    }
    }
    
}

-(IBAction)onChange:(id)sender
{
    UIButton *button = (UIButton*)sender;
    
    if(button.tag == 0)
    {
        UISegmentedControl *segControl = (UISegmentedControl*)sender;
        if (segControl != nil)
        {
            int selectedIndex = segControl.selectedSegmentIndex;
            
            
            if (selectedIndex == 0)
            {
                self.view.backgroundColor = [UIColor grayColor];
            }
            else if(selectedIndex == 1)
            {
                self.view.backgroundColor = [UIColor blueColor];
            }
            else if (selectedIndex == 2)
            {
                self.view.backgroundColor = [UIColor greenColor ];
            }
        }
    }
    
    
    else if (button.tag == 6)
    {
        
        UIStepper *stepControl = (UIStepper*) sender;
        if (stepControl != nil)
        {
            currentValue = stepControl.value;
            
            //display value in text field
            result.text = [NSString stringWithFormat:@"Needs %d hours", currentValue];
            
            stepperLabel.text = [NSString stringWithFormat:@"%d", currentValue];
            NSLog(@"Step value = %d", currentValue);
        }
        
    }
    
}


@end
