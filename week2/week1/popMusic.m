//
//  popMusic.m
//  week1
//
//  Created by Angela Ross on 5/9/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import "popMusic.h"

@implementation popMusic

@synthesize popSinger, amountOfFans, totalSecurityGuards;

//customize init for pop music
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        //setting data members to defaults
        [self setStudioTimeHours:0];
        [self setAmountOfFans:1000];
        [self setTotalSecurityGuards:20];
        NSLog(@"You're ready to book the studio!");
    }
    return self;
};

//overwriting the calculation method
-(void)calculateStudioTime
{
    //check the most update amount of fans
    NSLog(@"This artist has %i fans", amountOfFans);
    
    //set the amount of security guards based upon the amount of fans
    if (amountOfFans == 100){
        [self setTotalSecurityGuards:2];
        [self setStudioTimeHours:(self.amountOfFans) + (totalSecurityGuards)];
    }
    
    //log out total studio time hours needed
    NSLog(@"This artist will need %i hours in the studio based upon fans and security guards.", self.studioTimeHours);
}
@end
