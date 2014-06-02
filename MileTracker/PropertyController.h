//
//  PropertyController.h
//  MileTracker
//
//  Created by Jennifer Relfe on 6/1/14.
//  Copyright (c) 2014 MSSE650. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Property.h"

@class ViewController;

@interface PropertyController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *propertyTitle;
@property (weak, nonatomic) IBOutlet UILabel *addr1;
@property (weak, nonatomic) IBOutlet UILabel *addr2;
@property (weak, nonatomic) IBOutlet UILabel *city;
@property (weak, nonatomic) IBOutlet UILabel *state;
@property (weak, nonatomic) IBOutlet UILabel *zip;


//id used to retrieve data from sender
@property (nonatomic, strong) id passedData;

@end
