//
//  ipad.m
//  AOC2_Week2
//
//  Created by Robert Smith on 6/10/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "ipad.h"

@implementation ipad

@synthesize videoGigs, bookGigs, totalGigs;

//init to set ipad data
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setDeviceName:@"iPad"];
        [self setTotalGigs:16];
        [self setVideoGigs:10];
        [self setBookGigs:2];
    }
    return self;
}

//Override
-(void)calculateRemainingGigs
{
    [self setGigsRemaining:(totalGigs - (videoGigs + bookGigs))];
    
}


@end
