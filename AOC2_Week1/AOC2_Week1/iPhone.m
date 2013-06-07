//
//  iPhone.m
//  AOC2_Week1
//
//  Created by Robert Smith on 6/6/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "iPhone.h"

@implementation iPhone

@synthesize contract, generation;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setPrice:200];
        [self setContract:TRUE];
        [self setGeneration:5];
    }
    return self;
}

//Overwrite
-(void)calculatePrice
{
    if (contract == TRUE && generation == 5)
    {
        [self setPrice:200];
        [self setProductName:@"iPhone 5"];
        [self setProductType:@"phone"];
    }else{
        NSLog(@"Error");
    }
}


@end
