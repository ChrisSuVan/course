//
//  PlaylistDetailViewController.m
//  Algorthythm
//
//  Created by Jian Su on 2015-09-08.
//  Copyright (c) 2015 Jian Su. All rights reserved.
//

#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistDetailViewController ()

@end

@implementation PlaylistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.playlist) {
        self.playListCoverImage.image = self.playlist.playlistIconLarge;
        self.playListCoverImage.backgroundColor = self.playlist.backgroundColor;
        self.playListTitle.text = self.playlist.playlistTitle;
        self.playListDescription.text = self.playlist.playlistDescription;
        self.playListArtists0.text = self.playlist.playlistArtists[0];
        self.playListArtists1.text = self.playlist.playlistArtists[1];
        self.playListArtists2.text = self.playlist.playlistArtists[2];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
