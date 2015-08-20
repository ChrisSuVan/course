//
//  main.m
//  FizzBuzz
//
//  Created by Jian Su on 2015-08-18.
//  Copyright (c) 2015 Jian Su. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        char str[50] = {0};                  // init all to 0
        
        BOOL quit = YES;
        
        while (quit) {
            printf("please type a Number ");
            scanf("%s", str);
            NSString *userInput = [NSString stringWithUTF8String:str];
            int intVaue = [userInput intValue];
            
            if((intVaue % 3 == 0) && (intVaue % 5 == 0)) {
                NSLog(@"FizzBuzz");
                printf("continue? type Yes or No: ");
                scanf("%s", str);
                NSString *userInput = [NSString stringWithUTF8String:str];
                NSString *upperCaseInput = [userInput uppercaseString];
                if([upperCaseInput isEqualToString:@"NO"]) {
                    quit = NO;
                    break;
                } else {
                    continue;
                }
                
            }
            
            if (intVaue % 3 == 0) {
                NSLog(@"Fizz");
                printf("continue? type YES or NO: ");
                scanf("%s", str);
                NSString *userInput = [NSString stringWithUTF8String:str];
                NSString *upperCaseInput = [userInput uppercaseString];
                if([upperCaseInput isEqualToString:@"NO"]) {
                    quit = NO;
                }
            }
            
            if(intVaue % 5 == 0) {
                NSLog(@"Buzz");
                printf("continue? type Yes or No: ");
                scanf("%s", str);
                NSString *userInput = [NSString stringWithUTF8String:str];
                NSString *upperCaseInput = [userInput uppercaseString];
                if([upperCaseInput isEqualToString:@"NO"]) {
                    quit = NO;
                }
            }
            
        }
        
    }
    return 0;
}
