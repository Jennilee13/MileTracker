//
//  PropertyController.m
//  MileTracker
//
//  Created by Jennifer Relfe on 6/1/14.
//  Copyright (c) 2014 MSSE650. All rights reserved.
//

#import "PropertyController.h"
#import "ViewController.h"
#import "Property.h"
#import "PropertySvcCache.h"

@interface PropertyController ()

@end

@implementation PropertyController

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
    [super viewDidLoad];
    NSLog(@"in 3rd screen view did load %@", self.passedData);
    self.propertyTitle = self.passedData;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
