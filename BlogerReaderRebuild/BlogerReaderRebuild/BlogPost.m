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
        //if we cannot access the thumbnail over the internet, we set it nil
        self.thumbnail = nil;
        self.author = nil;
    }
    
    return self;
}

+(instancetype)blogPostWithTitle:(NSString *)title {
    return [[self alloc]initWithTitle:title];
}

-(NSURL *)thumbnailURL{
    
    return [NSURL URLWithString:self.thumbnail];
    
}

-(NSString *)formattedDate {
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc]init];
    
    //set the Date Format  same as the Json format
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    //convert the property of date (NSSting) to NSDate type
    NSDate* TempDate = [dateFormatter dateFromString:self.date];
    
    //now we set the date format that we want
    [dateFormatter setDateFormat:@"EE MMM, dd"];
    
    //return that as NSString
    return [dateFormatter stringFromDate:TempDate];
}

@end
