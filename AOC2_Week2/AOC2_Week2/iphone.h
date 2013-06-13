//
//  iphone.h
//  AOC2_Week2
//
//  Created by Robert Smith on 6/10/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "baseClass.h"

@interface iphone : baseClass

// data members for iphone
@property int photoGigs;
@property int appGigs;
@property int totalGigs;

//Override
-(void)calculateRemainingGigs;

@end
