//
//  productFactory.h
//  AOC2_Week2
//
//  Created by Robert Smith on 6/10/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseClass.h"
#import "iphone.h"
#import "ipod.h"
#import "ipad.h"

@interface productFactory : NSObject

+(baseClass *)createNewDevice: (int)deviceType;

@end
