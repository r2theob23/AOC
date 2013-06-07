//
//  productFactory.m
//  AOC2_Week1
//
//  Created by Robert Smith on 6/6/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "productFactory.h"

@implementation productFactory


+(appleProductsBaseClass *)createNewProduct: (int)productType;
{
    if (productType == IPHONE)
    {
        return [[iPhone alloc] init];
    }
    if (productType == IPAD)
    {
        return [[iPad alloc] init];
    }
    if (productType == MACBOOKPRO)
    {
        return [[macbookPro alloc] init];
    }
    else return nil;

};

@end
