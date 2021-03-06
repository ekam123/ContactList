//
//  InputCollector.h
//  ContactList
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputCollector : NSObject

@property NSMutableArray *history;

-(NSString *)inputForPrompt:(NSString *)promptString;

-(void)countHistory;


@end

NS_ASSUME_NONNULL_END
