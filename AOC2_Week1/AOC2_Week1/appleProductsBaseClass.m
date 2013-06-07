//
//  appleProductsBaseClass.m
//  AOC2_Week1
//
//  Created by Robert Smith on 6/6/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "appleProductsBaseClass.h"

@implementation appleProductsBaseClass

@synthesize productName, productType, price;

//Default
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setProductName:nil];
        [self setProductType:nil];
        [self setPrice:0];
    }
    return self;
}

//default function
-(void)calculatePrice
{

    NSLog(@"This product costs %i dollars", price);

}

@end
