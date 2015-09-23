//
//  BlogPost.m
//  BlogerReaderRebuild
//
//  Created by Jian Su on 9/22/15.
//  Copyright © 2015 Jian Su. All rights reserved.
//

#import "BlogPost.h"

@implementation BlogPost

-(instancetype)initWithTitle:(NSString *)title {
    self = [super init];
    
    if (self) {
        self.title = title;
    }
    
    return self;
}

+(instancetype)blogPostWithTitle:(NSString *)title {
    return [[self alloc]initWithTitle:title];
}

@end
