//
//  InputCollector.m
//  ContactList
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

- (instancetype)init
{
    self = [super init];
    if (self) {
        _history = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSString *)inputForPrompt:(NSString *)promptString {
    NSLog(@"%@", promptString);
    
    char input[255];
    fgets(input, 255, stdin);
    //
    NSString *theInput = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
    
    //getting rid of whitespace
    theInput = [theInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    [self.history addObject:theInput];
    
    return theInput;
}

-(void)countHistory {
    NSLog(@"%lu", [self.history count]);
    for (unsigned long int i = [self.history count] - 1; i > [self.history count] - 3 ; i--) {
        NSLog(@"%@", self.history[i]);
    }
}

@end
