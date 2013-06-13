//
//  productFactory.m
//  AOC2_Week2
//
//  Created by Robert Smith on 6/10/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "productFactory.h"

@implementation productFactory

+(baseClass *)createNewDevice: (int)deviceType

{
    {
        if (deviceType == IPHONE)
        {
            return [[iphone alloc] init];
        }
        if (deviceType == IPAD)
        {
            return [[ipad alloc] init];
        }
        if (deviceType == IPOD)
        {
            return [[ipod alloc] init];
        }
        else return nil;
    }

    

}


@end
