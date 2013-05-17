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
    summaryBodyLabel = [[UILabel alloc] initWithFrame:(CGRectMake(0.0f, 140.0f, 320.0f, 120.0f))];
    summaryBodyLabel.backgroundColor = [UIColor colorWithRed:0 green:1 blue:0.886 alpha:1] /*#0#ffe2*/;
    summaryBodyLabel.text = @"Professional cage fighter Forrest Griffin gives humorous advice on various topics including how to make it as a cage fighter              and 'how to be a real man'. ";
    summaryBodyLabel.textAlignment = NSTextAlignmentCenter;
    summaryBodyLabel.textColor = [UIColor colorWithRed:0 green:0.475 blue:0.251 alpha:1] /*#0#7940*/;
    summaryBodyLabel.numberOfLines = 4;
    
    // List Label
    listLabel = [[UILabel alloc] initWithFrame:(CGRectMake(0.0f, 265.0f, 107.0f, 30.0f))];
    listLabel.backgroundColor = [UIColor colorWithRed:0 green:0.722 blue:1 alpha:1] /*#0#b8ff*/;
    listLabel.text = @"List of Items:";
    listLabel.textAlignment = NSTextAlignmentLeft;
    listLabel.textColor = [UIColor colorWithRed:0 green:0.251 blue:0.275 alpha:1] /*#0#4046*/;
    
    //NSStrings
    fighting = [[NSString alloc] initWithString:fighting];
    ufc = [[NSString alloc] initWithString:ufc];
    ladies = [[NSString alloc] initWithString:ladies];
    infections = [[NSString alloc] initWithString:infections];
    fitness = [[NSString alloc] initWithString:fitness];
    
    //NSArray
    NSArray *bookTopics = [[NSArray alloc] initWithObjects:fighting, ufc, ladies, infections, fitness, nil];
    listItems = [[NSMutableString alloc]initWithString:
                 


    //List Items Body Label
    listItemsLabel = [[UILabel alloc] initWithFrame:(CGRectMake(0.0f, 140.0f, 320.0f, 120.0f))]];
    listItemsLabel.backgroundColor = [UIColor colorWithRed:0 green:1 blue:0.886 alpha:1] /*#0#ffe2*/;
    listItemsLabel.text = listItems;
    listItemsLabel.textAlignment = NSTextAlignmentCenter;
    listItemsLabel.textColor = [UIColor colorWithRed:0 green:0.475 blue:0.251 alpha:1] /*#0#7940*/;
    listItemsLabel.numberOfLines = 4;
    



    
    
    
    
    
    //Make Labels Visable
    [self.view addSubview:titleLabel];
    [self.view addSubview:authorLabel];
    [self.view addSubview:authorNameLabel];
    [self.view addSubview:publishedLabel];
    [self.view addSubview:datePublishedLabel];
    [self.view addSubview:summaryLabel];
    [self.view addSubview:summaryBodyLabel];
    [self.view addSubview:listLabel];



}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
