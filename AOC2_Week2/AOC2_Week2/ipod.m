//
//  ipod.m
//  AOC2_Week2
//
//  Created by Robert Smith on 6/10/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "ipod.h"

@implementation ipod

@synthesize audioGigs, podcastGigs, totalGigs, numberOfIpods;

//init to set ipod data
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setDeviceName:@"iPad"];
        [self setTotalGigs:32];
        [self setAudioGigs:17];
        [self setPodcastGigs:3];
        [self setNumberOfIpods:1];
    }
    return self;
}

//Override
-(void)calculateRemainingGigs
{
    [self setGigsRemaining:(totalGigs - (audioGigs + podcastGigs))];
    
}


@end
