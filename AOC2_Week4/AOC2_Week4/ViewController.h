//
//  ViewController.h
//  AOC2_Week3
//
//  Created by Robert Smith on 6/17/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventController.h"

@end
@interface ViewController : UIViewController 
{
    IBOutlet UITextView *eventField; // TextView
    IBOutlet UILabel *swipeToAdd;
    
    UISwipeGestureRecognizer *swipeRight;
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer;

@end
