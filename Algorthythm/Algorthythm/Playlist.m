//
//  Playlist.m
//  Algorthythm
//
//  Created by Jian Su on 2015-09-09.
//  Copyright (c) 2015 Jian Su. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"

@implementation Playlist

- (instancetype)initWithIndex:(NSUInteger)index
{
    self = [super init];
    if (self) {
        //create Music model object
        MusicLibrary * musicLibrary = [[MusicLibrary alloc]init];
        //load music model data
        NSArray* library = musicLibrary.library;
        //create Dictonary to hold music data
        NSDictionary* playListDictionay = library[index];
        _playlistTitle = [playListDictionay objectForKey:kTitle];
        _playlistDescription = [playListDictionay objectForKey:kDescription];
        NSString *iconName = [playListDictionay objectForKey:kIcon];
        _playlistIcon = [UIImage imageNamed:iconName];
        NSString* largeIconName = [playListDictionay objectForKey:kLargeIcon];
        _playlistIconLarge = [UIImage imageNamed:largeIconName];
        _playlistArtists = [NSArray arrayWithArray:[playListDictionay objectForKey:kArtists]];
        NSDictionary *colorDictionary = [playListDictionay objectForKey:kBackgroundColor];
        _backgroundColor = [self rgbDictionary:colorDictionary];

    }
    return self;
}

-(UIColor*)rgbDictionary:(NSDictionary*) colorDictionary {
    CGFloat red = [[colorDictionary  objectForKey:@"red"] doubleValue];
    CGFloat green = [[colorDictionary  objectForKey:@"green"] doubleValue];
    CGFloat blue = [[colorDictionary  objectForKey:@"blue"] doubleValue];
    CGFloat alpha = [[colorDictionary  objectForKey:@"alpha"] doubleValue];
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}

@end
