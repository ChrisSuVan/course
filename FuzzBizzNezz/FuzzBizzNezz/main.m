//
//  main.m
//  FuzzBizzNezz
//
//  Created by Jian Su on 2015-08-18.
//  Copyright (c) 2015 Jian Su. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char str[50] = {0};                  // init all to 0
        printf("please type a Something: ");
        scanf("%s", str);                    // read and format into the str buffer
        
        
        // Create an NS foundation NSString object from the str buffer
        NSString *userInput = [NSString stringWithUTF8String:str];
        
        if ([userInput isEqualToString:@"Fuzz"]) {
            NSLog(@"ok");
        }
        
        // %@ calls description o object - in NSString case, prints the string
        NSLog(@"lastName=%@", userInput);
    }
    return 0;
}
