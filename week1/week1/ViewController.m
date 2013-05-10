//
//  ViewController.m
//  week1
//
//  Created by Angela Ross on 5/9/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //create a country music band and set amount of accoustic guitars
    countryMusic *ladyAntebellum = (countryMusic*)[musicFactory createNewMusic:COUNTRY];
    [ladyAntebellum setAmountOfAccousticGuitars:3];
    
    
    //set members names, set lists, and music output to log
    if (ladyAntebellum !=nil){
        NSArray *countryMembers = [[NSArray alloc] initWithObjects:@"Hillary Scott", @"Charles Kelley", @"Dave Hayewood", nil];
        [ladyAntebellum setMembers:countryMembers];
        
        NSString *countrySetList = @"The band will sing, top performed songs 'Need you now' and 'Lookin for a good time'.";
        [ladyAntebellum setSetList:countrySetList];
        
        NSLog(@"This country band "
              "with the members %@", [ladyAntebellum members]);
        NSLog(@"%@", ladyAntebellum.setList);
    }
    
    //calculate and log studio time based upon play time
    
    //create a pop music band and set artist
    //set members names, set lists to output log
    //calculate and log studio time
    
    //create a soul music band and determine amount of choir members and band members
    //set members names, set lists, and music output to log
    //calculate and log studio time
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
