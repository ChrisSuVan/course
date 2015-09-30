//
//  main.m
//  ToyotaAreCarToo
//
//  Created by Jian Su on 9/29/15.
//  Copyright © 2015 Jian Su. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "TotoyaClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Car* nissan = [[Car alloc]initWithModel:@"Rogue"];
        [nissan drive];
        
        TotoyaClass* toyota = [[TotoyaClass alloc]init];
        [toyota drive];
    }
    return 0;
}
