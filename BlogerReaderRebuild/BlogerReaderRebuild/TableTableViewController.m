//
//  TableTableViewController.m
//  BlogerReaderRebuild
//
//  Created by Jian Su on 9/19/15.
//  Copyright (c) 2015 Jian Su. All rights reserved.
//

#import "TableTableViewController.h"
#import "BlogPost.h"
#import "WebViewController.h"

@interface TableTableViewController ()

@end

@implementation TableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Set this to avoid table view up against with the status bar
    self.tableView.contentInset = UIEdgeInsetsMake(20, 0, 0, 0);
    
    //Point to a URL
    NSURL *blogURL = [NSURL URLWithString:@"http://blog.teamtreehouse.com/api/get_recent_summary"];
    
    //Download URL data
    NSData *jsonData = [NSData dataWithContentsOfURL:blogURL];
    
    //Create NS Error
    NSError *error = nil;
    
    //convert json steam into dictionary
    NSDictionary *dataDictionay = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&error];
    
    NSArray* blogPostArray = [dataDictionay objectForKey:@"posts"];
    
    //create a blogPost array to holde dictionay data
    self.blogPosts = [NSMutableArray array];
    
    for (NSDictionary *bpDictionary in blogPostArray) {
        BlogPost* blogPost = [BlogPost blogPostWithTitle:[bpDictionary objectForKey:@"title"]];
        blogPost.author = [bpDictionary objectForKey:@"author"];
        blogPost.thumbnail = [bpDictionary objectForKey:@"thumbnail"];
        blogPost.date = [bpDictionary objectForKey:@"date"];
        blogPost.url = [NSURL URLWithString:[bpDictionary objectForKey:@"url"]];
        [self.blogPosts addObject:blogPost];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return [self.blogPosts count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    BlogPost *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
    
    //checke the class type
    if([blogPost.thumbnail isKindOfClass:[NSString class]]) {
        
        //download the image from the internet
        NSData* imageData = [NSData dataWithContentsOfURL:blogPost.thumbnailURL];
        UIImage* image = [UIImage imageWithData:imageData];
        
        //add image to the blog
        cell.imageView.image = image;
    } else {
        //Display default image
        cell.imageView.image = [UIImage imageNamed:@"Tree_House.png"];
    }
    
    cell.textLabel.text = blogPost.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ - %@",blogPost.author, [blogPost formattedDate]];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    //create BlogPost object
    BlogPost *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
    
    UIApplication* application = [UIApplication sharedApplication];
    [application openURL:blogPost.url];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showBlogPost"]) {
        NSIndexPath* indexPath = [self.tableView indexPathForSelectedRow];
        BlogPost *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
        //why this is setBlogPostURL when my @property is blogPostURL
        [segue.destinationViewController setBlogPostURL:blogPost.url];
    }
}

@end
