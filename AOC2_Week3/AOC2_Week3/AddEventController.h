//
//  AddEventController.h
//  AOC2_Week3
//
//  Created by Robert Smith on 6/20/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import <UIKit/UIKit.h>


// Delegate that takes the new event back to the ViewController text view.
@protocol AddEventDelegate <NSObject>

@required
-(void)eventSaved:(NSString*)_eventSaved dateSaved:(NSString *)dateText;

@end

@interface AddEventController : UIViewController <UITextFieldDelegate, UIPickerViewDelegate>
{
    // Outlets
    IBOutlet UITextField *eventText; // TextField
    IBOutlet UIDatePicker *_date; // Date picker
    
    id<AddEventDelegate> delegate; // Creates AddEventDelegate
    
    NSString *_eventSaved;
    NSString *dateText;
}

//Actions
-(IBAction)closeKeyboard:(id)sender; //close
-(IBAction)_picker:(id)sender;  //picker

// Allows you to set the delegate from outside
@property id<AddEventDelegate> delegate;
@end