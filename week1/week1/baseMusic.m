//
//  baseMusic.m
//  week1
//
//  Created by Angela Ross on 5/9/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import "baseMusic.h"

@implementation baseMusic

//synthesize creates get and set methods for each property
@synthesize instruments,instructions,studioTimeHours;

//initialie base music, creating an instance and setting time to zero
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setStudioTimeHours:0];
        [self setInstruments:nil];
        instructions=nil;
    }
    return self;
}

//calculation find studio time
-(void)calculateStudioTime
{
    // no calculation right now. just current value
    NSLog(@"This music needs %i hours of studio time", studioTimeHours);
}


@end
