//
//  BlogPost.h
//  BlogerReaderRebuild
//
//  Created by Jian Su on 9/22/15.
//  Copyright © 2015 Jian Su. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogPost : NSObject

@property(strong,nonatomic)NSString* title;
@property(strong,nonatomic)NSString* author;
@property(strong,nonatomic)NSString* thumbnail;
@property(strong,nonatomic)NSString* date;
@property(strong,nonatomic)NSURL* url;

//Designated initializer
-(instancetype)initWithTitle:(NSString*)title;
+(instancetype)blogPostWithTitle:(NSString*)title;
-(NSURL *) thumbnailURL;
-(NSString *)formattedDate;
@end
