//
//  ViewController.m
//  Algorthythm
//
//  Created by Jian Su on 2015-09-08.
//  Copyright (c) 2015 Jian Su. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (NSUInteger index = 0; index < self.playListImageViews.count; index++) {
        //init playlist collection and feed data inside it
        Playlist* playlist = [[Playlist alloc]initWithIndex:index];
        
        //init UI Image View Object to hold playlist data
        UIImageView *playListImageView = self.playListImageViews[index];
        
        //pass playlist icon and background color to playListImageView object
        playListImageView.image = playlist.playlistIcon;
        playListImageView.backgroundColor = playlist.backgroundColor;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
        PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController*)segue.destinationViewController;
        playlistDetailController.playlist = [[Playlist alloc]initWithIndex:0];
    }
}

- (IBAction)showPlayListDetial:(id)sender {
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}
@end
