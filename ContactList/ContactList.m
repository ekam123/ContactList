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
    if (userID < [self.contacts count] && userID >= 0) {
        Contact *test = self.contacts[userID];
        NSLog(@"\n%@\n%@\n", [test name], [test email]);
        for (PhoneNumbers *num in [test phonenumbers]) {
            NSLog(@"%@\n", num);
        }
    }
    else {
        NSLog(@"Not found"); 
    }
}

-(void)findContact:(NSString *)contactSubstring {
    NSArray *tmp = [contactSubstring componentsSeparatedByString:@" "];
    NSString *searchTerm = tmp[1];
    NSMutableArray *matchingContacts = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < [self.contacts count]; i++) {
        Contact *tmpContact = self.contacts[i];
        if ([tmpContact.name containsString:searchTerm] || [tmpContact.email containsString:searchTerm]) {
            [matchingContacts addObject:tmpContact];
        }
    }
   
    if ([matchingContacts count] == 0) {
        NSLog(@"No matches found!");
    }
    else {
        for (Contact *num in matchingContacts) {
            NSLog(@"\n%@\n%@\n", [num name], [num email]);
            for (PhoneNumbers *number in [num phonenumbers]) {
                NSLog(@"%@\n", number);
            }
        }
    }
}

-(BOOL)duplicateEmailCheck:(NSString *)email {
    for (Contact *person in self.contacts) {
        if ([[person email] isEqualToString:email]) {
            NSLog(@"Error: The contact already exists and cannot be created.");
            return YES;
        }
    }
    return NO;
}

@end
