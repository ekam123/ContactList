//
//  main.m
//  ContactList
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"
#import "PhoneNumbers.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL inputLoop = YES;
        InputCollector *newInput = [[InputCollector alloc] init];
        ContactList *contactList = [[ContactList alloc] init];

        while (inputLoop) {
            NSString *userInput = [[newInput inputForPrompt:@"The menu: What would you like do next? \nnew - Create a new contact; list - List all contacts; quit - Exit Application > _"] lowercaseString];
            
            
            if ([userInput isEqualToString:@"quit"]) {
                NSLog(@"Adieu!");
                break;
            }
            else if ([userInput isEqualToString:@"new"]) {
                NSString *email = [newInput inputForPrompt:@"Enter your email: "];
                if ([contactList duplicateEmailCheck:email]) {
                    continue; 
                }
                NSString *fullname = [newInput inputForPrompt:@"Enter your full name: "];
                
                 Contact *contact1 = [[Contact alloc] initWithName:fullname andEmail:email];
                BOOL phoneFlag = YES;
                while (phoneFlag) {
                    NSString *reply = [newInput inputForPrompt:@"Would you like to add a phone number(s)? (y/n)"];
                    if ([reply isEqualToString:@"y"]) {
                        NSString *typeOfPhone = [newInput inputForPrompt:@"Enter the type of phone. (Ex: Mobile, house, etc)"];
                        NSString *number = [newInput inputForPrompt:@"Enter your number"];
                        PhoneNumbers *phoneNumber = [[PhoneNumbers alloc] initWithType:typeOfPhone andNumber:number];
                        [contact1 addNumbers:phoneNumber];
                    }
                    else {
                        break;
                    }
                    NSString *moreNumbers = [newInput inputForPrompt:@"Would you like to add another phone number? (y/n)"];
                    if ([moreNumbers isEqualToString:@"y"]) {
                        continue;
                    }
                    else {
                        phoneFlag = NO; 
                        break; 
                    }
                
                }
               
                [contactList addContact:contact1];

            }
            else if ([userInput isEqualToString:@"list"]) {
                [contactList printContactList]; 
            }
            else if ([userInput isEqualToString:@"show"]) {
                int idNumber = [[newInput inputForPrompt:@"Enter an id number: "] intValue];
                [contactList showContactInfo:idNumber]; 
            }
            else if ([userInput containsString:@"find"]) {
                [contactList findContact:userInput]; 
            }
            else if ([userInput containsString:@"history"]) {
                [newInput countHistory]; 
            }
            
            
           
        }
        
        
        
        
    }
    return 0;
}
