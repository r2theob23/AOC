//
//  ViewController.h
//  AOC2_Week2
//
//  Created by Robert Smith on 6/10/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    //Labels and Text Fields
    IBOutlet UILabel *deviceLabel;
    IBOutlet UITextField *deviceText;
    // Stepper
    IBOutlet UIStepper *multiplier;
    // Buttons
    IBOutlet UIButton *phoneButton;
    IBOutlet UIButton *padButton;
    IBOutlet UIButton *podButton;
    IBOutlet UIButton *calculateButton;
}

// Actions
-(IBAction)device:(id)sender; // device buttons
-(IBAction)calculate:(id)sender; // calculate button
-(IBAction)info:(id)sender; // info button
-(IBAction)stepperChange:(id)sender; // stepper
-(IBAction)segmentChange:(id)sender; // segmented control

@end
