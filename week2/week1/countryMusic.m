//
//  countryMusic.m
//  week1
//
//  Created by Angela Ross on 5/9/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import "countryMusic.h"

@implementation countryMusic

@synthesize amountOfAccousticGuitars, howLongTheyPlay;

//customizing init to set unique data members
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setStudioTimeHours:20];
        [self setAmountOfAccousticGuitars:3];
        [self setHowLongTheyPlay:2];
    }
    return self;
};

//overriding studio time hours to factor in unique data members
-(void)calculateStudioTime
{
    [self setStudioTimeHours:(amountOfAccousticGuitars * howLongTheyPlay)];
    NSLog(@"This country band needs %i hours in the studio.", self.studioTimeHours);
}

@end
