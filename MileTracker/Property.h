//
//  Property.h
//  MileTracker
//
//  Created by Jennifer Relfe on 5/25/14.
//  Copyright (c) 2014 MSSE650. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Property : NSObject

@property (nonatomic,strong) NSString *title;
@property (nonatomic, strong) NSString *addr1;
@property (nonatomic, strong) NSString *addr2;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *state;
@property (nonatomic, strong) NSString *zip;
//@property needed for photo image

@end
