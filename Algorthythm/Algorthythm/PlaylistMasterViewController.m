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
    Playlist* playList = [[Playlist alloc]initWithIndex:0];
    self.playListImageVeiw0.image = playList.playlistIcon;
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
