//
//  PropertyDtlViewController.h
//  MileTracker
//
//  Created by Jennifer Relfe on 5/26/14.
//  Copyright (c) 2014 MSSE650. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Property.h"

@class ViewController;


@protocol PropertyDtlViewControllerDelegate <NSObject>

//- (void)finishPropertyAdd:(NSString *)item;
- (void)finishPropertyAdd:(Property *) item;
@end


@interface PropertyDtlViewController : UIViewController

//sender view controller delegate
@property (nonatomic, weak) id <PropertyDtlViewControllerDelegate> delegate;



- (IBAction)AddPropertyDone:(id)sender;

- (IBAction)cancelPropertyAdd:(id)sender;

//id used to retrieve data from sender
@property (nonatomic, strong) id passedData;

@property (weak, nonatomic) IBOutlet UITextField *propTitle;


@property (weak, nonatomic) IBOutlet UITextField *addr1;

@property (weak, nonatomic) IBOutlet UITextField *addr2;
@property (weak, nonatomic) IBOutlet UITextField *city;
@property (weak, nonatomic) IBOutlet UITextField *zip;

@end
