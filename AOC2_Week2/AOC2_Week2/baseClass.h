//
//  baseClass.h
//  AOC2_Week2
//
//  Created by Robert Smith on 6/10/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseClass : NSObject
{
    int deviceEnum;
}

//Assign ints with the device names to avoid using zero based index
typedef enum
{
    IPHONE,
    IPAD,
    IPOD 
} deviceEnum;


//Data members that all subclasses will share
@property NSString * deviceName;
@property int totalGigs;
@property int gigsRemaining;

//initialize
-(id)init;

//Method to calculate how many gigs each device has
-(void)calculateRemainingGigs;

@end
