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

//1. Create Add Function

-(NSInteger)addOne:(NSInteger)x1 addTwo:(NSInteger)x2;
{
    return x1 + x2;
}

//2. Create Compare Function

-(BOOL)compareOne:(NSInteger)y1 compareTwo:(NSInteger)y2;
{

    if(y1 == y2) {
        return YES;
    }else {
        return NO;
    }


}

//3. Create Append Function 

- (NSString *)appendOne:(NSString *)z1 appendTwo:(NSString *)z2
{
    NSMutableString *myString = [NSMutableString stringWithString:z1];
    [myString appendString:z2];
    return myString;
}

//5. Create displayAlertWithString function

-(void)displayAlertWithString:(NSString*)string; {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:string delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alert show];


}

//********************************************************************************************************************************

- (void)viewDidLoad
{
    
//4. Calling the append function to combine two mutableStrings
    
[self displayAlertWithString:[self appendOne:@"Hello " appendTwo:@"World!"]];
    
//6. Calling Addition Function to calculate x1 + x2
    
int numOne = 14;
int numTwo = 27;
int result = [self addOne:numOne addTwo:numTwo];
NSString*addAlert = [NSString stringWithFormat:@"The sum of %d + %d is %d", numOne, numTwo, result];
[self displayAlertWithString:addAlert];
    
//7. Bundle the result of add function 
    
//9. Calling the Compare function to compare y1 & y2
    
int boolOne = 50;
int boolTwo = 76;
    if ([self  compareOne:boolOne compareTwo:boolTwo]) {
        [self displayAlertWithString:[NSString stringWithFormat:@"%i and %i are equal", boolOne, boolTwo]];
    }else {
        [self displayAlertWithString:[NSString stringWithFormat:@"%i and %i are not equal", boolOne, boolTwo]];
    }
    
//********************************************************************************************************************************
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
