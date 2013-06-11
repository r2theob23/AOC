//
//  productFactory.h
//  AOC2_Week1
//
//  Created by Robert Smith on 6/6/13.
//  Copyright (c) 2013 Robert Smith. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "appleProductsBaseClass.h"
#import "iPhone.h"
#import "iPad.h"
#import "macbookPro.h"

@interface productFactory : NSObject

+(appleProductsBaseClass *)createNewProduct: (int)productType;


@end
