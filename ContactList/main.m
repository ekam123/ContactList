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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL inputLoop = YES;
        InputCollector *newInput = [[InputCollector alloc] init];
        ContactList *contactList = [[ContactList alloc] init];

        while (inputLoop) {
            NSString *userInput = [[newInput inputForPrompt:@"The menu: What would you like do next? \nnew - Create a new contact list - List all contacts quit - Exit Application > _"] lowercaseString];
            
            if ([userInput isEqualToString:@"quit"]) {
                NSLog(@"Adieu!");
                break;
            }
            if ([userInput isEqualToString:@"new"]) {
                NSString *fullname = [newInput inputForPrompt:@"Enter your full name: "];
                NSString *email = [newInput inputForPrompt:@"Enter your email: "];
                
                 Contact *contact1 = [[Contact alloc] initWithName:fullname andEmail:email];
                [contactList addContact:contact1];

            }
            
           
        }
        
        
        
        
    }
    return 0;
}
