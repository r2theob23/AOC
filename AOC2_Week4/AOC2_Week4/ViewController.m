//
//  ViewController.m
//  AOC2_Week4
//
//  Created by Robert Smith on 6/27/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [swipe addGestureRecognizer:swipeRight];
    
    [singleton CreateInstance];
    
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    if ([userDefaults objectForKey:@"userEntries"] != nil)
    {
        textView.text = [userDefaults objectForKey:@"userEntries"];
    }
    
    if ([[singleton GetInstance] addEvent] == TRUE)
    {
    	NSMutableString *text = [[NSMutableString alloc] initWithString:textView.text];
        
		[text appendString:[[singleton GetInstance] eventString]];
        textView.text = text;
        
        [[singleton GetInstance] setAddEvent:FALSE];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

// Switch to SecondViewController (Add Event page)
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    AddEventViewController *changePage = [[AddEventViewController alloc] initWithNibName:@"AddEventView" bundle:nil];
    if (changePage != nil)
    {
        [self presentViewController:changePage animated:true completion:nil];
        NSLog(@"Swiped Right");
    }
}

-(IBAction)save:(id)sender
{
    NSString *userEntries = [[NSString alloc] initWithString:textView.text];
    [userDefaults setObject:userEntries forKey:@"userEntries"];
    
    NSLog(@"%@", userEntries);
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ALERT!" message:@"Your event has been saved!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if (alert != nil) {
        [alert show];
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
