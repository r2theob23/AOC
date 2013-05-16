//
//  ViewController.m
//  AOC_Week2
//
//  Created by Robert Smith on 5/14/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //Background Color
    self.view.backgroundColor = [UIColor blueColor];
   
    //Title Lable
    titleLabel = [[UILabel alloc] initWithFrame:(CGRectMake(0.0f, 0.0f, 320.0f, 30.0f))];
    titleLabel.backgroundColor = [UIColor redColor];
    titleLabel.text = @"Got Fight?";
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textColor = [UIColor blackColor];
    
    //Author Label
    authorLabel = [[UILabel alloc] initWithFrame:(CGRectMake(0.0f, 35.0f, 107.0f, 30.0f))];
    authorLabel.backgroundColor = [UIColor yellowColor];
    authorLabel.text = @"Author:";
    authorLabel.textAlignment = NSTextAlignmentRight;
    authorLabel.textColor = [UIColor blueColor];
    
    //Author Name Label
    authorNameLabel = [[UILabel alloc] initWithFrame:(CGRectMake(107.0f, 35.0f, 213.0f, 30.0f))];
    authorNameLabel.backgroundColor = [UIColor magentaColor];
    authorNameLabel.text = @"Forrest Griffin";
    authorNameLabel.textAlignment = NSTextAlignmentLeft;
    authorNameLabel.textColor = [UIColor whiteColor];

    //Published Label
    publishedLabel = [[UILabel alloc] initWithFrame:(CGRectMake(0.0f, 70.0f, 107.0f, 30.0f))];
    publishedLabel.backgroundColor = [UIColor brownColor];
    publishedLabel.text = @"Published:";
    publishedLabel.textAlignment = NSTextAlignmentRight;
    publishedLabel.textColor = [UIColor greenColor];
    
    //Date Published Label
    datePublishedLabel = [[UILabel alloc] initWithFrame:(CGRectMake(107.0f, 70.0f, 213.0f, 30.0f))];
    datePublishedLabel.backgroundColor = [UIColor cyanColor];
    datePublishedLabel.text = @"June 2, 2009";
    datePublishedLabel.textAlignment = NSTextAlignmentLeft;
    datePublishedLabel.textColor = [UIColor grayColor];
    
    //Summary Label
    summaryLabel = [[UILabel alloc] initWithFrame:(CGRectMake(0.0f, 105.0f, 107.0f, 30.0f))];
    summaryLabel.backgroundColor = [UIColor orangeColor];
    summaryLabel.text = @"Summary:";
    summaryLabel.textAlignment = NSTextAlignmentLeft;
    summaryLabel.textColor = [UIColor purpleColor];
    
    //Summary Body Label
    summaryBodyLabel = [[UILabel alloc] initWithFrame:(CGRectMake(0.0f, 140.0f, 320.0f, 160.0f))];
    summaryBodyLabel.backgroundColor = [UIColor orangeColor];
    summaryBodyLabel.text = @"Professional cage fighter Forrest Griffin ";
    summaryBodyLabel.textAlignment = NSTextAlignmentCenter;
    summaryBodyLabel.textColor = [UIColor purpleColor];

    
    
    
    
    
    //Make Labels Visable
    [self.view addSubview:titleLabel];
    [self.view addSubview:authorLabel];
    [self.view addSubview:authorNameLabel];
    [self.view addSubview:publishedLabel];
    [self.view addSubview:datePublishedLabel];
    [self.view addSubview:summaryLabel];
    [self.view addSubview:summaryBodyLabel];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
