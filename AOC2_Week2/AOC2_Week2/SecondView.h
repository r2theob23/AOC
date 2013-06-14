//
//  SecondView.h
//  AOC2_Week2
//
//  Created by Robert Smith on 6/13/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondView : UIViewController

{
    IBOutlet UILabel *myInfo;
    IBOutlet UIButton *backButton;
}

-(IBAction)back:(id)sender; // back button


@end
