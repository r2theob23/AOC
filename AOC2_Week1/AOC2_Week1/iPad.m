//
//  iPad.m
//  AOC2_Week1
//
//  Created by Robert Smith on 6/6/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "iPad.h"

@implementation iPad

@synthesize gigs, mini;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setPrice:329];
        [self setGigs:16];
        [self setMini:TRUE];
    }
    return self;
}

-(void)calculatePrice
{
    if (gigs < 16 && mini == TRUE)
    {
        [self setPrice:329];
        [self setProductName:@"iPad Mini"];
        [self setProductType:@"Tablet"];
    }else{
        NSLog(@"Error");
    }
}



@end
