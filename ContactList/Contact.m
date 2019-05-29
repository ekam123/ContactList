//
//  Contact.m
//  ContactList
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName:(NSString *)name andEmail:(NSString *)email
{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _phonenumbers = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", self.name];
}

- (void)addNumbers:(PhoneNumbers *)phoneNumber {
    [self.phonenumbers addObject:phoneNumber]; 
}

@end
