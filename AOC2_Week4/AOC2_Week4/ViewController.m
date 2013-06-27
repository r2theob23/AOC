//
//  ViewController.m
//  AOC2_Week3
//
//  Created by Robert Smith on 6/17/13.
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
    [swipeToAdd addGestureRecognizer:swipeRight];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    AddEventController *changePage = [[AddEventController alloc] initWithNibName:@"AddEventView" bundle:nil];
    if (changePage != nil)
    {
        
        [self presentViewController:changePage animated:true completion:nil];
        NSLog(@"Swiped Right");
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Switch to Add Event Page
-(void)eventSaved:(NSString*)_eventSaved dateSaved:(NSString *)_dateSaved
{
    // \n represents a new line (spaces) between events
    NSString *eventText = [NSString stringWithFormat:@"\n\nNew Event: %@\n%@", _eventSaved, _dateSaved];
    
    if ([eventField.text isEqualToString:@""])
    {
        eventField.text = [NSString stringWithFormat:@"\nNew Event: %@\n%@", _eventSaved, _dateSaved];
    }
    else
    {
        eventField.text = [eventField.text stringByAppendingString:eventText];
    }
}

@end
