//
//  ViewController.m
//  AOC2_Week2
//
//  Created by Robert Smith on 6/10/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "ViewController.h"
#import "productFactory.h"
#import "baseClass.h"
#import "SecondView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //----------------------------------Start AOC 2 Project 2-------------------------------------------
    
    self.view.backgroundColor = [UIColor lightGrayColor];

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//Start of IBActions
//Device Button Methods
//Disabling selected button
-(IBAction)device:(id)sender
{
    UIButton *deviceButton = (UIButton*)sender;
    if (deviceButton != nil)
    {
        //iPhone Button
        if (deviceButton.tag == 0)
        {
            phoneButton.enabled = FALSE;
            padButton.enabled = TRUE;
            podButton.enabled = TRUE;
            calculateButton.enabled = TRUE;
            deviceText.text = (@"iPhone");
            NSLog(@"iPhone Button Pressed");
        }
        //iPad Button
        else if (deviceButton.tag == 1)
        {
            phoneButton.enabled = TRUE;
            padButton.enabled = FALSE;
            podButton.enabled = TRUE;
            calculateButton.enabled = TRUE;
            deviceText.text = (@"iPad");
            NSLog(@"iPad Button Pressed");
        }
        //iPod Button
        else if (deviceButton.tag == 2)
        {
            phoneButton.enabled = TRUE;
            padButton.enabled = TRUE;
            podButton.enabled = FALSE;
            calculateButton.enabled = TRUE;
            deviceText.text = (@"iPod");
            NSLog(@"iPod Button Pressed");
        }
    }
}
-(IBAction)stepperChange:(id)sender
{
    //Grab Value of stepper
    int addDevice = multiplier.value;
    //if enabled is FALSE, then the user has pressed this button
    if (phoneButton.enabled == false)
    {
        deviceText.text = [NSString stringWithFormat:@"%d iPhones", addDevice];
    }
    else if (padButton.enabled == false)
    {
        deviceText.text = [NSString stringWithFormat:@"%d iPads", addDevice];
    }
    else if (podButton.enabled == false)
    {
        deviceText.text = [NSString stringWithFormat:@"%d iPods", addDevice];
    }
}
//Calculation method
-(IBAction)calculate:(id)sender
{
    //if enabled is FALSE, then the user has pressed this button
    if (phoneButton.enabled == FALSE)
    {
        iphone * iPhoneText = (iphone*)[productFactory createNewDevice:IPHONE];
        if (iPhoneText != nil)
        {
            [iPhoneText calculateRemainingGigs];
            int addPhone = (iPhoneText.gigsRemaining * multiplier.value);
            deviceText.text = [NSString stringWithFormat:@"There are %d gigs left on iPhone(s)", addPhone];
            //Reset Stepper to 1
            multiplier.value = 1;
        }
    }
    else if (padButton.enabled == FALSE)
    {
        ipad * iPadText = (ipad*)[productFactory createNewDevice:IPAD];
        if (iPadText != nil)
        {
            [iPadText calculateRemainingGigs];
            int addPad = (iPadText.gigsRemaining * multiplier.value);
            deviceText.text = [NSString stringWithFormat:@"There are %d gigs left on iPad(s)", addPad];
            //Reset Stepper to 1
            multiplier.value = 1;
        }
    }
    else if (podButton.enabled == FALSE)
    {
        ipod * iPodText = (ipod*)[productFactory createNewDevice:IPOD];
        if (iPodText != nil)
        {
            [iPodText calculateRemainingGigs];
            int addPod = (iPodText.gigsRemaining * multiplier.value);
            deviceText.text = [NSString stringWithFormat:@"There are %d gigs left on iPod(s)", addPod];
            //Reset Stepper to 1
            multiplier.value = 1;
           
        }
    }
    
}
//Info button sends user to new view with developers info displayed
-(IBAction)info:(id)sender
{
    SecondView *secondView = [[SecondView alloc]initWithNibName:@"SecondView"  bundle:nil];
    if (secondView != nil)
    {
        [self presentViewController:secondView animated:TRUE completion:nil];
    }
}
//Controls Background Color
-(IBAction)segmentChange:(id)sender
{
    UISegmentedControl *colorSwitch = (UISegmentedControl*)sender;
    if (colorSwitch != nil)
    {
        //grab selected index (zero based)
        int _pressed = colorSwitch.selectedSegmentIndex;
        
        if (_pressed == 0)
        {
            self.view.backgroundColor = [UIColor lightGrayColor]; // Default
            NSLog(@"Default Pressed");
        }
        else if (_pressed == 1)
        {
            self.view.backgroundColor = [UIColor redColor]; // red
            NSLog(@"red Pressed");
        }
        else if (_pressed == 2)
        {
            self.view.backgroundColor = [UIColor yellowColor]; // Yellow
            NSLog(@"Yellow Pressed");
        }
        else if (_pressed == 3)
        {
            self.view.backgroundColor = [UIColor blueColor]; // Blue
            NSLog(@"Blue Pressed");
        }
    }
}

@end
