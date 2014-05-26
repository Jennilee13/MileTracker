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

@interface ViewController ()

@end

@implementation ViewController

PropertySvcCache *propertySvc = nil;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [[propertySvc retrieveAllProperties] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier:simpleTableIdentifier];
    }
    Property *property = [[propertySvc retrieveAllProperties] objectAtIndex:indexPath.row];
    cell.textLabel.text = property.title;
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    propertySvc = [[PropertySvcCache alloc] init];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveProperty:(id)sender {
    NSLog(@"enter save Property");
    [self.view endEditing:YES];
    Property *property = [[Property alloc] init];
    property.title = _propTitle.text;
    property.addr1 = @"temp addr1";
    property.addr2 = @"temp addr2";
    property.city = @"temp city";
    property.state = @"TS";
    property.zip = @"12345";
    [propertySvc createProperty:property];
    [self.tableViewProperty reloadData];
    NSLog(@"property created");
}

- (IBAction)deleteProperty:(id)sender {
    
    NSLog(@"DeleteContact");
    [self.view endEditing:YES];
    
    NSIndexPath *selectedIndexPath = self.tableViewProperty.indexPathForSelectedRow;
    
    Property *property  = [[propertySvc retrieveAllProperties] objectAtIndex:selectedIndexPath.row];
    
    NSLog(@"selected row %@", property.title);
    
    [propertySvc deleteProperty:property];
    
    [self.tableViewProperty reloadData];

}
@end
