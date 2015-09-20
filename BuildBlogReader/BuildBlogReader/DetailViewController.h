//
//  DetailViewController.h
//  BuildBlogReader
//
//  Created by Jian Su on 9/17/15.
//  Copyright (c) 2015 Jian Su. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

