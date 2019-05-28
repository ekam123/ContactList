//
//  main.m
//  ContactList
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL inputLoop = YES;
        
        while (inputLoop) {
            InputCollector *newInput = [[InputCollector alloc] init];
            NSString *userInput = [[newInput inputForPrompt:@"The menu: What would you like do next? \nnew - Create a new contact list - List all contacts quit - Exit Application > _"] lowercaseString];
            
            if ([userInput isEqualToString:@"quit"]) {
                NSLog(@"Adieu!");
                break; 
            }
            
        }
        
        
        
    }
    return 0;
}
