//
//  PhoneNumbers.h
//  ContactList
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PhoneNumbers : NSObject

@property NSString *label;
@property NSString *number; 

- (instancetype)initWithType:(NSString *)type andNumber:(NSString *)number; 

@end

NS_ASSUME_NONNULL_END
