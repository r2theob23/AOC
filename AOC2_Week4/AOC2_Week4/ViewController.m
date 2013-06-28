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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
