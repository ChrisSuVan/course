//
//  Car.h
//  ToyotaAreCarToo
//
//  Created by Jian Su on 9/29/15.
//  Copyright © 2015 Jian Su. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property (strong, nonatomic)NSString* model;

-(void)drive;
-(instancetype)initWithModel:(NSString*)model;

@end
