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
        
        BOOL quit = YES;
        int Nezz = 1;
        int Fuzz = 3;
        int Bizz = 5;
        
        while (quit) {
            printf("please type a Number ");
            scanf("%s", str);
            NSString *userInput = [NSString stringWithUTF8String:str];
            
            int intVaue = [userInput intValue];
            
            
            if((intVaue % Fuzz == 0) && (intVaue % Bizz == 0)) {
                NSLog(@"FuzzBizz");
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
            
            if (intVaue % Fuzz == 0) {
                NSLog(@"Fuzz");
                printf("continue? type YES or NO: ");
                scanf("%s", str);
                NSString *userInput = [NSString stringWithUTF8String:str];
                NSString *upperCaseInput = [userInput uppercaseString];
                if([upperCaseInput isEqualToString:@"NO"]) {
                    quit = NO;
                }
            }
            
            if(intVaue % Bizz == 0) {
                NSLog(@"Bizz");
                printf("continue? type Yes or No: ");
                scanf("%s", str);
                NSString *userInput = [NSString stringWithUTF8String:str];
                NSString *upperCaseInput = [userInput uppercaseString];
                if([upperCaseInput isEqualToString:@"NO"]) {
                    quit = NO;
                }
            }
            
            if(intVaue == Nezz) {
                NSLog(@"Nezz");
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
