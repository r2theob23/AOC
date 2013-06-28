//
//  ViewController.h
//  AOC2_Week4
//
//  Created by Robert Smith on 6/27/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventViewController.h"

@interface ViewController : UIViewController

{
    IBOutlet UITextView *textView; // TextView
    
    IBOutlet UILabel *swipe; // Swipe Label
    UISwipeGestureRecognizer *swipeRight;
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer;
-(IBAction)save:(id)sender; // Save

@end
