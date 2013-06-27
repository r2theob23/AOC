//
//  ViewController.h
//  AOC2_Week3
//
//  Created by Robert Smith on 6/17/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventController.h"

@interface ViewController : UIViewController <AddEventDelegate>

{
    IBOutlet UITextView *eventField; // TextView
}

-(IBAction)addEvent:(id)sender; // Add Event button


@end
