//
//  PropertySvc.h
//  MileTracker
//
//  Created by Jennifer Relfe on 5/25/14.
//  Copyright (c) 2014 MSSE650. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Property.h"

@protocol PropertySvc <NSObject>

- (Property *) createProperty: (Property *) property;
- (NSMutableArray *) retrieveAllProperties;
- (Property *) updateProperty: (Property *) property;
- (Property *) deleteProperty: (Property *) property;

@end
