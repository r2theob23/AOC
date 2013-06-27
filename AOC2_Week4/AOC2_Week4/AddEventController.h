//
//  AddEventController.h
//  AOC2_Week3
//
//  Created by Robert Smith on 6/20/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AddEventController : UIViewController
{
    // Outlets
    IBOutlet UITextField *eventText; // TextField
    IBOutlet UIDatePicker *_date; // Date picker
    IBOutlet UILabel *swipeToClose;
    
    UISwipeGestureRecognizer *swipeLeft;
    
    NSString *_eventSaved;
    NSString *dateText;
}

//Actions
-(IBAction)closeKeyboard:(id)sender; //close
-(IBAction)_picker:(id)sender;  //picker

