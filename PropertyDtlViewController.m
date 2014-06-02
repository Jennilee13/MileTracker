//
//  PropertyDtlViewController.m
//  MileTracker
//
//  Created by Jennifer Relfe on 5/26/14.
//  Copyright (c) 2014 MSSE650. All rights reserved.
//

#import "PropertyDtlViewController.h"
#import "ViewController.h"
#import "Property.h"
#import "PropertySvcCache.h"




@interface PropertyDtlViewController ()

@end

@implementation PropertyDtlViewController

PropertySvcCache *propertyAddSvc = nil;

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
    NSLog(@"in 2nd screen view did load %@", self.passedData);
    
    self.propTitle.text = self.passedData;
    self.addr1.text = self.passedData;
    self.city.text = @"Tampa";
    
    
    // Do any additional setup after loading the view.
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

- (IBAction)AddPropertyDone:(id)sender {
    NSLog(@"in addpropertydone");
    
    [self.view endEditing:YES];
    Property *property = [[Property alloc] init];
    property.title = _propTitle.text;
    property.addr1 = @"temp addr1";
    property.addr2 = @"temp addr2";
    property.city = @"temp city";
    property.state = @"TS";
    property.zip = @"12345";
    
    NSLog(@"execute delegate %@", _propTitle.text);
    
    //send data back to calling view
    //[self.delegate finishPropertyAdd:_propTitle.text];
    [self.delegate finishPropertyAdd:property];
    
 
   //[propertyAddSvc createProperty:property];
  
        [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancelPropertyAdd:(id)sender {
    NSLog(@"in cancelpropertyadd");
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
