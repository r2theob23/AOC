//
//  baseClass.m
//  AOC2_Week2
//
//  Created by Robert Smith on 6/10/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "baseClass.h"

@implementation baseClass

//Get and set two methods for each property using @synthesize
@synthesize deviceName, gigsRemaining, totalGigs;

//init the baseClass and set all properties to 0

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setDeviceName:nil];
        [self setGigsRemaining:0];
        [self setTotalGigs:0];
    }
    return self;
}

//Method to calculate how many gigs each device has
-(void)calculateRemainingGigs
{
    NSLog(@"This device has %i gigs reamining until the device is full", gigsRemaining);
}


@end
