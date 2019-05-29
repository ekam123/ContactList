//
//  PhoneNumbers.m
//  ContactList
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import "PhoneNumbers.h"

@implementation PhoneNumbers

- (instancetype)initWithType:(NSString *)type andNumber:(NSString *)number
{
    self = [super init];
    if (self) {
        _label = type;
        _number = number; 
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@:%@", self.label, self.number];
}

@end
