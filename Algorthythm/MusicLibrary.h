//
//  MusicLibrary.h
//  Algorthythm
//
//  Created by Jian Su on 2015-09-09.
//  Copyright (c) 2015 Jian Su. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString* const kTitle;
extern NSString* const kDescription;
extern NSString* const kIcon;
extern NSString* const kLargeIcon;
extern NSString* const kBackgroundColor;
extern NSString* const kArtists;

@interface MusicLibrary : NSObject

@property (strong, nonatomic)NSArray* library;

@end
