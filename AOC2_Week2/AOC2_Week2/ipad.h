//
//  ipad.h
//  AOC2_Week2
//
//  Created by Robert Smith on 6/10/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "baseClass.h"

@interface ipad : baseClass

// data members for iphone
@property int videoGigs;
@property int bookGigs;
@property int totalGigs;
@property int numberOfIpads;


//Override
-(void)calculateRemainingGigs;

@end
