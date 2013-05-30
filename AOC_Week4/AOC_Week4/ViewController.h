//
//  ViewController.h
//  AOC_Week4
//
//  Created by Robert Smith on 5/28/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //Variables 
    UILabel * userName;
    UITextField * textField;
    UIButton * showLogin;
    UILabel * enterUsername;
    UIButton * showDate;
    UIButton * showInfo;
    UILabel * authorsName;
    NSString * input;
    UIAlertView * alertView;
    NSDate * today;
    NSDateFormatter * dateFormat;


}

//Functions
-(void)onClick:(UIButton*)button;


@end
