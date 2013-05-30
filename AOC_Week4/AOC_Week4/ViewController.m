//
//  ViewController.m
//  AOC_Week4
//
//  Created by Robert Smith on 5/28/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

//Define Macros
# define loginButton 0
# define dateButton 1
# define infoButton 2

@implementation ViewController


- (void)viewDidLoad
{
    //Backround Color
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    //Username label
    userName = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 90.0f, 30.0f)];
    if (userName != nil)
    {
        userName.text = @"Username: "; 
        userName.textColor = [UIColor whiteColor];
        [userName setBackgroundColor: [UIColor clearColor]];
    }
    
    //Text Field
    textField = [[UITextField alloc] initWithFrame:CGRectMake(100.0f, 12.5f, 200.0f, 30.0f)];
    if (textField != nil)
    {
        textField.borderStyle = UITextBorderStyleRoundedRect;
        // Closes the keyboard when "return" is pressed.
         [textField addTarget:self action:@selector(resignFirstResponder)forControlEvents:UIControlEventEditingDidEndOnExit];
    }
    
    //Login Button
    showLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (showLogin != nil)
    {
    
        showLogin.frame = CGRectMake(200.0f, 55.0f, 100.0f, 40.0f);
        [showLogin setTitle:@"Login" forState:UIControlStateNormal];
        showLogin.tag = loginButton;
        [showLogin addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];


    }
    
    //Enter Username UILabel
    enterUsername = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 110.0f, 320.0f, 70.0f)];
    if (enterUsername != nil);
    {
    
        enterUsername.text = @"Please Enter Username";
        enterUsername.textColor = [UIColor blueColor];
        enterUsername.textAlignment = NSTextAlignmentCenter;
    
    }
    
    //Date Button
    showDate = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (showDate != nil) {
        
        showDate.frame = CGRectMake(10.0f, 210.0f, 100.0f, 40.0f);
        [showDate setTitle:@"Show Date" forState:UIControlStateNormal];
        showDate.tag = dateButton;
        [showDate addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    //Info Button
    showInfo = [UIButton buttonWithType:UIButtonTypeInfoLight];
    if (showInfo != nil)
    {
    
        showInfo.frame = CGRectMake(10.0f, 300.0f, 20.0f, 20.0f);
        showInfo.tag = infoButton;
        [showInfo addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
    }
    
    //authours name
    authorsName = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 320.0f, 320.0f, 70.0f)];
    if (authorsName != nil)
    {
        
        [authorsName setBackgroundColor:[UIColor clearColor]];
        authorsName.textColor = [UIColor whiteColor];
        authorsName.numberOfLines = 2;
    
    }
    
    
    
    //Make Elements visable
    [self.view addSubview:userName];
    [self.view addSubview:textField];
    [self.view addSubview:showLogin];
    [self.view addSubview:enterUsername];
    [self.view addSubview:showDate];
    [self.view addSubview:showInfo];
    [self.view addSubview:authorsName];

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//onClick Function is called when buttons are pressed
-(void)onClick:(UIButton*)button
{
    //When Login Button is pressed, users info is displayed 
    if (button.tag == loginButton)
    {
        input = textField.text;
        if (input.length > 0)
        {
            enterUsername.text = [NSString stringWithFormat:@"User: %@ has been logged in.", input];
        }
        else
        {
            enterUsername.text = @"Username cannot be empty";
        }
    }
    //end login if statement
    //When Show Date button is pressed, an alertview with the date will appear
    if (button.tag == dateButton)
    {
        {
            //Create a NSDate using "date" which sets "today" as the current date and time.
            today = [NSDate date];
            dateFormat = [[NSDateFormatter alloc] init];
            if (dateFormat != nil)
            {
                [dateFormat setDateFormat:@"MMMM d, y  h:mm:ssa  zzzz"];
                
                alertView = [[UIAlertView alloc] initWithTitle:@"Date" message:[NSString stringWithFormat:@"%@", [dateFormat stringFromDate:today]] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                if (alertView != nil)
                {
                    [alertView show];
                }
                else
                {
                    NSLog(@"Error");
                }
            }
        }
        
    }
    //end date function
    //Display Author's name
    if (button.tag == infoButton)
    {
        if (authorsName != nil)
        {
            authorsName.text = @"This application was written by Robert Smith";
        }

    }

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
