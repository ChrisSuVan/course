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
        
        //create UI Image View object to hold sender object which user just tape the image
        UIImageView *playListImageView = (UIImageView *)[sender view];
        
        //check if the playListImagesView has the object that we just tape
        if ([self.playListImageViews containsObject:playListImageView]) {
            //if the sender object existed, we will get the index of that object
            NSInteger index = [self.playListImageViews indexOfObject:playListImageView];
            
            //put the index down to here
            PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController*)segue.destinationViewController;
            playlistDetailController.playlist = [[Playlist alloc]initWithIndex:index];
        }
        
    }
}

- (IBAction)showPlayListDetial:(id)sender {
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}
@end
