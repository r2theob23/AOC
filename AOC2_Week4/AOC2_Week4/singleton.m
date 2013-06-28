//
//  singleton.m
//  AOC2_Week4
//
//  Created by Robert Smith on 6/27/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "singleton.h"

@implementation singleton

@synthesize event, date, addEvent;


//staic pointer
static singleton *instance = nil;

//static method
+(singleton*)GetInstance
{
    if (instance == nil)
    {
        return instance;
    }
    return instance;
}

//loads instance
+(void)CreateInstance
{
    if(instance == nil)
        
    {
        [[self alloc] init];
    }
}

+(id)alloc
{
    instance = [super alloc];//sets instance
    return instance;
}

//init self
-(id)init
{
    if(self = [super init])
    {
        addEvent = FALSE;
    }
    return self;
}

//returns formatted event string
-(NSString*)eventString
{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    if (dateFormat != nil)
    {
        [dateFormat setDateFormat:@"MMMM dd, h:mm a"];
    }
    NSString *eventStr = [[NSString alloc] initWithFormat:@"%@ \n%@ \n \n", event, [dateFormat stringFromDate:date]];
    return eventStr;
}


@end
