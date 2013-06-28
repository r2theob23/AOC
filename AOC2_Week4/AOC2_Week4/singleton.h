//
//  singleton.h
//  AOC2_Week4
//
//  Created by Robert Smith on 6/27/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface singleton : NSObject

@property (nonatomic, strong)  NSString *event; //event string
@property (nonatomic, strong) NSDate *date; //date string
@property BOOL addEvent; //instance created then add new instance, new event


//static
+(singleton*)GetInstance;

//instance
+(void)CreateInstance;

//creates string
-(NSString*)eventString;

@end
