//
//  ViewController.m
//  AOC_Week3
//
//  Created by Robert Smith on 5/22/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//Add Function

-(NSInteger)addOne:(NSInteger)x1 addTwo:(NSInteger)x2;
{
    return x1 + x2;
}

//Compare Function

-(BOOL)compareOne:(NSInteger)y1 compareTwo:(NSInteger)y2;
{

    if(y1 == y2) {
        return YES;
    }else {
        return NO;
    }


}

//Append Two Strings Together

- (NSString *)appendOne:(NSString *)z1 appendTwo:(NSString *)z2
{
    NSMutableString *myString = [NSMutableString stringWithString:z1];
    [myString appendString:z2];
    return myString;
}

//displayAlertWithString function

-(void)displayAlertWithString:(NSString*)string; {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:string delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alert show];


}



- (void)viewDidLoad
{
    
    // Calling Addition Function to calculate x1 + x2
    int numOne = 14;
    int numTwo = 27;
    int result = [self addOne:numOne addTwo:numTwo];
    NSString*addAlert = [NSString stringWithFormat:@"The sum of %d + %d is %d", numOne, numTwo, result];
    [self displayAlertWithString:addAlert];
    
    //Calling the Compare function to compare y1 & y2
    
    
    

 

    
    
    
    
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
