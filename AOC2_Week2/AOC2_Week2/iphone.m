//
//  iphone.m
//  AOC2_Week2
//
//  Created by Robert Smith on 6/10/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "iphone.h"

@implementation iphone

@synthesize photoGigs, appGigs, totalGigs, numberOfIphones;

//init to set iphone data
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setDeviceName:@"iPhone"];
        [self setTotalGigs:16];
        [self setPhotoGigs:4];
        [self setAppGigs:8];
        [self setNumberOfIphones:1];
    }
    return self;
}

//Override
-(void)calculateRemainingGigs
{
    [self setGigsRemaining:(totalGigs - (photoGigs + appGigs))];
    
}



@end
