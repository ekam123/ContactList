//
//  InputCollector.m
//  ContactList
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    NSLog(@"%@", promptString);
    
    char input[255];
    fgets(input, 255, stdin);
    //
    NSString *theInput = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
    
    //getting rid of whitespace
    theInput = [theInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return theInput;
}

@end
