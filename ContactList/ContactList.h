//
//  ContactList.h
//  ContactList
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
#import "PhoneNumbers.h"


NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject


@property NSMutableArray *contacts;

-(void)addContact:(Contact *)newContact;

-(void)printContactList;

-(void)showContactInfo:(int)userID;

-(void)findContact:(NSString *)contactSubstring;

-(BOOL)duplicateEmailCheck:(NSString *)email; 

@end

NS_ASSUME_NONNULL_END
