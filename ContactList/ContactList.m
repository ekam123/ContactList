//
//  ContactList.m
//  ContactList
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init]; 
    }
    return self;
}

- (void)addContact:(Contact *)newContact {
    [self.contacts addObject:newContact]; 
}

@end
