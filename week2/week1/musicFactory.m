//
//  musicFactory.m
//  week1
//
//  Created by Angela Ross on 5/9/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import "musicFactory.h"

@implementation musicFactory

+(baseMusic *)createNewMusic: (int)musicType
{
    //if country is requested select country
    if (musicType == COUNTRY){
        return [[countryMusic alloc] init];
        
        //if POP is requested select POP
    }else if (musicType == POP) {
        return [[popMusic alloc] init];
        //if soul requested select soul
      
    } else if (musicType == SOUL){
        return [[soulMusic alloc] init];
    } else return nil;
}
@end
