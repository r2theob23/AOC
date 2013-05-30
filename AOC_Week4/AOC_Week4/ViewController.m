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
    }
    
    //First Button
    loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil)
    {
    
        loginButton.frame = CGRectMake(200.0f, 55.0f, 100.0f, 40.0f);
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];

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
    dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil) {
        
        dateButton.frame = CGRectMake(10.0f, 210.0f, 100.0f, 40.0f);
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
    }
    
    //Info Button
    infoButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
    if (infoButton != nil)
    {
    
        infoButton.frame = CGRectMake(10.0f, 300.0f, 20.0f, 20.0f);
    
    
    }
    //Make Elements visable
    [self.view addSubview:userName];
    [self.view addSubview:textField];
    [self.view addSubview:loginButton];
    [self.view addSubview:enterUsername];
    [self.view addSubview:dateButton];
    [self.view addSubview:infoButton];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
