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

- (void)printContactList {
    for (int i = 0; i < [self.contacts count]; i++) {
        NSLog(@"%d: %@", i, self.contacts[i]);
    }
}

- (void)showContactInfo:(int)userID {
    if (userID < [self.contacts count] && userID > 0) {
        Contact *test = self.contacts[userID];
        NSLog(@"\n%@\n%@\n", [test name], [test email]);
    }
    else {
        NSLog(@"Not found"); 
    }
   
}

@end
