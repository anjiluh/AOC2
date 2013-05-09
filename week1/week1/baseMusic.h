//
//  baseMusic.h
//  week1
//
//  Created by Angela Ross on 5/9/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseMusic : NSObject
{
    int musicEnum;
}

typedef enum {
    COUNTRY,
    POP,
    SOUL
} musicEnum;

//data members for creating music instruments needed, instructions to band members, studio time hours
@property NSArray *instruments;
@property NSString *instructions;
@property int studioTimeHours;

//initialize
-(id)init;

//calculation find studio time
-(void)calculateStudioTime;

@end
