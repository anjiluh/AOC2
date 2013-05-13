 //
//  soulMusic.m
//  week1
//
//  Created by Angela Ross on 5/9/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import "soulMusic.h"

@implementation soulMusic

@synthesize amountOfChoirMembers,amountofBandMembers;
//customize init for soul music
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        //setting data members to defaults
        [self setStudioTimeHours:3];
        [self setAmountOfChoirMembers:5];
        [self setAmountofBandMembers:7];
        NSLog(@"You're ready to book the studio!");
    }
    return self;
};


//overwriting the calculation method
-(void)calculateStudioTime
{
    [self setStudioTimeHours:(amountOfChoirMembers + amountofBandMembers)];
    NSLog(@"This soul band needs %i hours in the studio.", self.studioTimeHours);
}


@end
