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
    if (titleLabel != nil){
        
        titleLabel.backgroundColor = [UIColor redColor];
        titleLabel.text = @"Got Fight?";
        titleLabel.textAlignment = NSTextAlignmentCenter;
        titleLabel.textColor = [UIColor blackColor];
    
    }
    
    //Author Label
    authorLabel = [[UILabel alloc] initWithFrame:(CGRectMake(0.0f, 35.0f, 107.0f, 30.0f))];
    if (authorLabel != nil){
        
        authorLabel.backgroundColor = [UIColor yellowColor];
        authorLabel.text = @"Author:";
        authorLabel.textAlignment = NSTextAlignmentRight;
        authorLabel.textColor = [UIColor blueColor];
    
    }
   
    //Author Name Label
    authorNameLabel = [[UILabel alloc] initWithFrame:(CGRectMake(107.0f, 35.0f, 213.0f, 30.0f))];
    if (authorNameLabel != nil) {
    
        authorNameLabel.backgroundColor = [UIColor magentaColor];
        authorNameLabel.text = @"Forrest Griffin";
        authorNameLabel.textAlignment = NSTextAlignmentLeft;
        authorNameLabel.textColor = [UIColor whiteColor];

    }
    
    //Published Label
    publishedLabel = [[UILabel alloc] initWithFrame:(CGRectMake(0.0f, 70.0f, 107.0f, 30.0f))];
    if (publishedLabel != nil) {

        publishedLabel.backgroundColor = [UIColor brownColor];
        publishedLabel.text = @"Published:";
        publishedLabel.textAlignment = NSTextAlignmentRight;
        publishedLabel.textColor = [UIColor greenColor];
    
    }
    
    //Date Published Label
    datePublishedLabel = [[UILabel alloc] initWithFrame:(CGRectMake(107.0f, 70.0f, 213.0f, 30.0f))];
    if (datePublishedLabel != nil){
    
        datePublishedLabel.backgroundColor = [UIColor cyanColor];
        datePublishedLabel.text = @"June 2, 2009";
        datePublishedLabel.textAlignment = NSTextAlignmentLeft;
        datePublishedLabel.textColor = [UIColor grayColor];
    
    }
    
    //Summary Label
    summaryLabel = [[UILabel alloc] initWithFrame:(CGRectMake(0.0f, 105.0f, 107.0f, 30.0f))];
    if (summaryLabel != nil){
        
        summaryLabel.backgroundColor = [UIColor orangeColor];
        summaryLabel.text = @"Summary:";
        summaryLabel.textAlignment = NSTextAlignmentLeft;
        summaryLabel.textColor = [UIColor purpleColor];
        
    }
    
    //Summary Body Label
    summaryBodyLabel = [[UILabel alloc] initWithFrame:(CGRectMake(0.0f, 140.0f, 320.0f, 120.0f))];
    if (summaryBodyLabel != nil){
        
        summaryBodyLabel.backgroundColor = [UIColor colorWithRed:0 green:1 blue:0.886 alpha:1] /*#0#ffe2*/;
        summaryBodyLabel.text = @"Professional cage fighter Forrest Griffin gives humorous advice on various topics including how to make it as a cage fighter and 'how to be a real man'. ";
        summaryBodyLabel.textAlignment = NSTextAlignmentCenter;
        summaryBodyLabel.textColor = [UIColor darkGrayColor];
        summaryBodyLabel.numberOfLines = 4;
        
    }
    
    // List Label
    listLabel = [[UILabel alloc] initWithFrame:(CGRectMake(0.0f, 265.0f, 107.0f, 30.0f))];
    if (listLabel != nil){
        
        listLabel.backgroundColor = [UIColor colorWithRed:0 green:0.722 blue:1 alpha:1] /*#0#b8ff*/;
        listLabel.text = @"List of Items:";
        listLabel.textAlignment = NSTextAlignmentLeft;
        listLabel.textColor = [UIColor colorWithRed:0 green:0.251 blue:0.275 alpha:1] /*#0#4046*/;
    
    }
    
    //NSString Items
    item1 = @" Fighting";
    item2 = @" UFC";
    item3 = @" Ladies";
    item4 = @" Infections";
    item5 = @" and Physical Fitness";
    
    //NSArray
    list = [[NSArray alloc]initWithObjects:item1, item2, item3, item4, item5, nil];
            
    //NSMutableString
    listItems = [[NSMutableString alloc] initWithCapacity: 5];
    
    //Appeding NSMutableString with array of strings
    
    for (int i=0; i < list.count; i++) {
        [listItems appendString:[list objectAtIndex:i]];
        if (i < list.count -1){
            [listItems appendString: @","];
        }

    }
    
    //List Body Label
    listItemsLabel = [[UILabel alloc] initWithFrame:(CGRectMake(0.0f, 300.0f, 320.0f, 80.0f))];
    if (listItemsLabel != nil){
    
        listItemsLabel.backgroundColor = [UIColor colorWithRed:0.839 green:0.714 blue:0.902 alpha:1] /*#d6b6e6*/;
        listItemsLabel.text = listItems;
        listItemsLabel.textAlignment = NSTextAlignmentCenter;
        listItemsLabel.textColor = [UIColor colorWithRed:0 green:0.318 blue:0.239 alpha:1] /*#00513d*/;
        listItemsLabel.numberOfLines = 4;
    
    }
    
    //Make Labels Visable
    [self.view addSubview:titleLabel];
    [self.view addSubview:authorLabel];
    [self.view addSubview:authorNameLabel];
    [self.view addSubview:publishedLabel];
    [self.view addSubview:datePublishedLabel];
    [self.view addSubview:summaryLabel];
    [self.view addSubview:summaryBodyLabel];
    [self.view addSubview:listLabel];
    [self.view addSubview:listItemsLabel];




}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
