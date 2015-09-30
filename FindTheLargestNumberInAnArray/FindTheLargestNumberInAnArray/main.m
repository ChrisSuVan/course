//
//  main.m
//  FindTheLargestNumberInAnArray
//
//  Created by Jian Su on 9/29/15.
//  Copyright © 2015 Jian Su. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuickSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // unsorted array
        NSArray* myArray = @[@44, @5, @6];
        
        //create quick sort object
        QuickSort* quickSort = [[QuickSort alloc]init];
        
        //convert NSArray into MutableArray
        NSMutableArray *myMutableArray = [quickSort createMutableArray:myArray];
        
        //create array to hold sorted result
        NSArray * sorted = [[NSArray alloc]init];
        
        //call QucikSort function
        sorted = [quickSort QuickSort:myMutableArray];
        
        NSLog(@"%@", sorted);
        
    }
    return 0;
}
