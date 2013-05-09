//
//  musicFactory.h
//  week1
//
//  Created by Angela Ross on 5/9/13.
//  Copyright (c) 2013 Angela Waters. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseMusic.h"
#import "countryMusic.h"
#import "popMusic.h"
#import "soulMusic.h"

@interface musicFactory : NSObject

+(baseMusic *)createNewMusic: (int)musicType;

@end
