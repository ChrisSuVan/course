//
//  Playlist.h
//  Algorthythm
//
//  Created by Jian Su on 2015-09-09.
//  Copyright (c) 2015 Jian Su. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Playlist : NSObject

@property (strong, nonatomic)NSString *playlistTitle;
@property (strong, nonatomic)NSString *playlistDescription;
@property (strong, nonatomic)UIImage *playlistIcon;
@property (strong, nonatomic)UIImage *playlistIconLarge;
@property (strong,nonatomic) NSArray *playlistArtists;
@property (strong, nonatomic)UIColor *backgroundColor;

@end
