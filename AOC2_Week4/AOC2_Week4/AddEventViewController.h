//
//  AddEventViewController.h
//  AOC2_Week4
//
//  Created by Robert Smith on 6/27/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "singleton.h"

@interface AddEventViewController : UIViewController

{
    IBOutlet UITextField *textField; //input text field
    IBOutlet UIDatePicker *chooseDate;     //date
    IBOutlet UIButton *closeKeyboard;      //close keyboard
    IBOutlet UILabel *eventLabel; //event labels
    UISwipeGestureRecognizer *swipeLeft; //left swipe gesture
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer; //left swipe action
-(IBAction)closeKeyboard:(id)sender; //close keyboard action

@end
