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

@end
