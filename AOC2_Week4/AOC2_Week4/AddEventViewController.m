//
//  AddEventViewController.m
//  AOC2_Week4
//
//  Created by Robert Smith on 6/27/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "AddEventViewController.h"
#import "singleton.h"


@interface AddEventViewController ()

@end

@implementation AddEventViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

//Appends data if event has been created
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
	if ([textField.text length] > 0)
    {
        //uses the singleton to get the instance of each
        [[singleton GetInstance] setEvent: textField.text];
        NSLog(@"%@", textField.text);
        [[singleton GetInstance] setDate:  chooseDate.date];
        NSLog(@"%@", chooseDate.date);
        
        [[singleton GetInstance] setAddEvent:TRUE];
        
        [self dismissViewControllerAnimated:true completion:nil];
	}
    else
    {
        //Error
        UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Error!" message:@"No event." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        if (error != nil)
        {
        	[error show];
        }
    }
}


- (void)viewWillAppear:(BOOL)animated
{
    swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [eventLabel addGestureRecognizer:swipeLeft];
	
    //Auto set date to today if user does not select a date, also does not allow past dates 
    NSDate *autoDate = [NSDate date];
    chooseDate.minimumDate = autoDate;
    
}



//Closes keyboard when user is done typing
-(IBAction)closeKeyboard:(id)sender
{
    [textField resignFirstResponder];
    
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end