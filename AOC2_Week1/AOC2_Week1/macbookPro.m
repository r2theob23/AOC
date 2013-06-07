//
//  macbookPro.m
//  AOC2_Week1
//
//  Created by Robert Smith on 6/6/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "macbookPro.h"

@implementation macbookPro

@synthesize retenia, screenSizeInInches;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setPrice:1499];
        [self setRetenia:FALSE];
        [self setScreenSizeInInches:13];
    }
    return self;
}

//Overwrite
-(void)calculatePrice
{
     if (retenia == FALSE && screenSizeInInches < 15)
     {
         [self setPrice:1499];
         [self setProductName:@"Macbook Pro"];
         [self setProductType:@"laptop"];
     }else{
         NSLog(@"Error");
     }
}



@end
