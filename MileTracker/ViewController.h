//
//  ViewController.h
//  MileTracker
//
//  Created by Jennifer Relfe on 5/25/14.
//  Copyright (c) 2014 MSSE650. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITextField *propTitle;

- (IBAction)saveProperty:(id)sender;
- (IBAction)deleteProperty:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableViewProperty;

@end
