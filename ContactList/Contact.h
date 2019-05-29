//
//  Contact.h
//  ContactList
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhoneNumbers.h"

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property NSString *name;
@property NSString *email;
@property NSMutableArray *phonenumbers;


- (instancetype)initWithName:(NSString *)name andEmail:(NSString *)email;

- (void)addNumbers:(PhoneNumbers *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
