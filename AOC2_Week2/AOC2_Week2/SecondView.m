//
//  SecondView.m
//  AOC2_Week2
//
//  Created by Robert Smith on 6/13/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "SecondView.h"
#import "ViewController.h"

@interface SecondView ()

@end

@implementation SecondView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)back:(id)sender
{
     [self dismissViewControllerAnimated:TRUE completion:nil];
}

@end
