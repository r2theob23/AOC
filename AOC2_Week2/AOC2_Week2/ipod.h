//
//  ipod.h
//  AOC2_Week2
//
//  Created by Robert Smith on 6/10/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "baseClass.h"

@interface ipod : baseClass

// data members for iphone
@property int audioGigs;
@property int podcastGigs;
@property int totalGigs;
@property int numberOfIpods;


//Override
-(void)calculateRemainingGigs;


@end
