//
//  Car.m
//  ToyotaAreCarToo
//
//  Created by Jian Su on 9/29/15.
//  Copyright © 2015 Jian Su. All rights reserved.
//

#import "Car.h"

@implementation Car


-(instancetype)initWithModel:(NSString *)model{
    self.model = model;
    return self;
}

-(void)drive {
    NSLog(@"You are Driving %@", self.model);
}

@end
