//
//  appleProductsBaseClass.h
//  AOC2_Week1
//
//  Created by Robert Smith on 6/6/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface appleProductsBaseClass : NSObject

{
    int productEnum;
}

typedef enum {
    IPHONE,
    IPAD,
    MACBOOKPRO
} productEnum;

@property NSString *productName;
@property NSString *productType;
@property int price;

-(id)init;

-(void)calculatePrice;

@end
