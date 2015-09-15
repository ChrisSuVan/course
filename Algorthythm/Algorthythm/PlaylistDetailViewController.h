//
//  PlaylistDetailViewController.h
//  Algorthythm
//
//  Created by Jian Su on 2015-09-08.
//  Copyright (c) 2015 Jian Su. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Playlist;

@interface PlaylistDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *playListCoverImage;
@property (weak, nonatomic) IBOutlet UILabel *playListTitle;
@property (weak, nonatomic) IBOutlet UILabel *playListDescription;
@property (weak, nonatomic) IBOutlet UILabel *playListArtists0;
@property (weak, nonatomic) IBOutlet UILabel *playListArtists1;
@property (weak, nonatomic) IBOutlet UILabel *playListArtists2;
@property (strong,nonatomic)Playlist* playlist;
@end
