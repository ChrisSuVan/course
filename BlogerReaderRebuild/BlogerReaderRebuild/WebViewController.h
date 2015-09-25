//
//  WebViewController.h
//  BlogerReaderRebuild
//
//  Created by Jian Su on 9/24/15.
//  Copyright © 2015 Jian Su. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController
@property (strong,nonatomic) NSURL *blogPostURL;
@property (strong, nonatomic) IBOutlet UIWebView *webView;
@end
