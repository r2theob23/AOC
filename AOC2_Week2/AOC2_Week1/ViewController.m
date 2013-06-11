//
//  ViewController.m
//  AOC2_Week1
//
//  Created by Robert Smith on 6/6/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import "ViewController.h"
#import "appleProductsBaseClass.h"
#import "productFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    title = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 30.0f)];
    if (title != nil)
    {
        title.text = @"Apple Products";
        title.textColor = [UIColor whiteColor];
        title.textAlignment = NSTextAlignmentCenter;
        title.backgroundColor = [UIColor blackColor];
    }
    
    //iphone
    iPhone * iPhoneText = (iPhone*)[productFactory createNewProduct:IPHONE];
    
    if (iPhoneText != nil)
    {
        [iPhoneText calculatePrice];
        
        iphoneLable = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 40.0f, 320.0f, 65.0f)];
        if (iphoneLable != nil)
        {
            iphoneLable.text = [NSString stringWithFormat:@"The %@ is a good %@ as long as it is under contract.", iPhoneText.productName, iPhoneText.productType];
            iphoneLable.numberOfLines = 3;
            iphoneLable.textColor = [UIColor whiteColor];
            iphoneLable.textAlignment = NSTextAlignmentCenter;
            iphoneLable.backgroundColor = [UIColor blackColor];
        }
        
    }
    
    //ipad
    iPad * iPadText = (iPad*)[productFactory createNewProduct:IPAD];
    
    if (iPadText != nil)
    {
        [iPadText calculatePrice];
        
        ipadLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 120.0f, 320.0f, 65.0f)];
        if (ipadLabel != nil)
        {
            ipadLabel.text = [NSString stringWithFormat:@"The %@ is a good deal for a %@ as long as it has %i gigs and is priced at %i dollars.", iPadText.productName, iPadText.productType, iPadText.gigs, iPadText.price];
            ipadLabel.numberOfLines = 3;
            ipadLabel.textColor = [UIColor whiteColor];
            ipadLabel.textAlignment = NSTextAlignmentCenter;
            ipadLabel.backgroundColor = [UIColor blackColor];
        }
    }
    
    //Macbook Pro
    macbookPro * macbookText = (macbookPro*)[productFactory createNewProduct:MACBOOKPRO];
    
    if (macbookText != nil)
    {
        [macbookText calculatePrice];
        
        macbookproLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 200.0f, 320.0f, 65.0f)];
        if (macbookproLabel != nil)
        {
            macbookproLabel.text = [NSString stringWithFormat:@"The %@ is a good %@ priced right at %i dollars for the %i inch model.", macbookText.productName, macbookText.productType, macbookText.price, macbookText.screenSizeInInches];
            macbookproLabel.numberOfLines = 3;
            macbookproLabel.textColor = [UIColor whiteColor];
            macbookproLabel.textAlignment = NSTextAlignmentCenter;
            macbookproLabel.backgroundColor = [UIColor blackColor];
        }
    }

    
    
    
    //Subviews
    [self.view addSubview:title];
    [self.view addSubview:iphoneLable];
    [self.view addSubview:ipadLabel];
    [self.view addSubview:macbookproLabel];

    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
