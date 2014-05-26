//
//  PropertySvcCache.m
//  MileTracker
//
//  Created by Jennifer Relfe on 5/25/14.
//  Copyright (c) 2014 MSSE650. All rights reserved.
//

#import "PropertySvcCache.h"

@implementation PropertySvcCache

NSMutableArray *properties = nil;

- (id) init {
    if (self = [super init]) {
        properties = [NSMutableArray array];
        return self;
    }
    
    return nil;
    
}

- (Property *) createProperty:(Property *)property {
    [properties addObject:property];
    return property;
}

- (NSMutableArray *) retrieveAllProperties {
    return properties;
}

- (Property *) updateProperty:(Property *)property {
    return property;
}

- (Property *) deleteProperty:(Property *)property {
    NSLog(@"in service cache deleteProperty");
    NSLog(@"delete property %@", property.title);
    [properties removeObject:property];
    

    return property;
}
@end
