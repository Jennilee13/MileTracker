//
//  ViewController.m
//  MileTracker
//
//  Created by Jennifer Relfe on 5/25/14.
//  Copyright (c) 2014 MSSE650. All rights reserved.
//

#import "ViewController.h"
#import "Property.h"
#import "PropertySvcCache.h"
#import "PropertyDtlViewController.h"


@interface ViewController ()

@end

@implementation ViewController

PropertySvcCache *propertySvc = nil;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [[propertySvc retrieveAllProperties] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //static NSString *simpleTableIdentifier = @"SimpleTableItem";
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PropertyCell"];
    //if (cell == nil) {
    //    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier:simpleTableIdentifier];
    //}
    
    Property *property = [[propertySvc retrieveAllProperties] objectAtIndex:indexPath.row];
    cell.textLabel.text = property.title;
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //NSLog(@"viewdidoad");
    
    propertySvc = [[PropertySvcCache alloc] init];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    //NSLog(@"enter viewwillappear");
    [self.tableViewProperty reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSLog(@"in prepare for seque %@", segue.identifier);
    
    
    
    if ([[segue identifier] isEqualToString:@"PropertyAddSegue"]){
        NSLog(@"next step");
        PropertyDtlViewController *detailPropertyViewController = segue.destinationViewController;
        detailPropertyViewController.passedData = @"test";
        
        detailPropertyViewController.delegate = self;
        
    }
    else if ([[segue identifier] isEqualToString:@"PropertyDetail"]){
        NSLog(@"property detail segue");
        PropertyController *destinationPropertyController = segue.destinationViewController;
        destinationPropertyController.passedData = @"Temp Title";
        
    }
}

- (IBAction)saveProperty:(id)sender {
    NSLog(@"enter save Property");
    //[self.view endEditing:YES];
    //Property *property = [[Property alloc] init];
    
   // [propertySvc createProperty:property];
   // [self.tableViewProperty reloadData];
    //NSLog(@"property created");
}

//- (void)finishPropertyAdd:(NSString *)item{
//    NSLog(@"in parent finish property add %@", item);
//    //[self dismissViewControllerAnimated:YES completion:nil];
//}

- (void)finishPropertyAdd:(Property *)item{
    NSLog(@"in parent finish property addr1 %@", item.addr1);
    [propertySvc createProperty:item];
    [self.tableViewProperty reloadData];
    NSLog(@"property created");

}



- (IBAction)deleteProperty:(id)sender {
    
    //NSLog(@"DeleteContact");
    [self.view endEditing:YES];
    
    NSIndexPath *selectedIndexPath = self.tableViewProperty.indexPathForSelectedRow;
    
    Property *property  = [[propertySvc retrieveAllProperties] objectAtIndex:selectedIndexPath.row];
    
    NSLog(@"selected row %@", property.title);
    
    [propertySvc deleteProperty:property];
    
    [self.tableViewProperty reloadData];

}
@end
