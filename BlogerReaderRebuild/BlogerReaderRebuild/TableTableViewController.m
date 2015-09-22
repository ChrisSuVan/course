//
//  TableTableViewController.m
//  BlogerReaderRebuild
//
//  Created by Jian Su on 9/19/15.
//  Copyright (c) 2015 Jian Su. All rights reserved.
//

#import "TableTableViewController.h"

@interface TableTableViewController ()

@end

@implementation TableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *blogPost1 = [NSDictionary dictionaryWithObjectsAndKeys:
                               @"The missing Widget in C++", @"title",
                               @"Ben Jakuben",@"author",nil];
    
    NSDictionary *blogPost2 = [NSDictionary dictionaryWithObjectsAndKeys:
                               @"getting started with java", @"title",
                               @"Tim vancer",@"author",nil];
    
    NSDictionary *blogPost3 = [NSDictionary dictionaryWithObjectsAndKeys:
                               @"the javaScript good parts", @"title",
                               @"Dacker cork",@"author",nil];
    
    NSDictionary *blogPost4 = [NSDictionary dictionaryWithObjectsAndKeys:
                               @"Mysql how to normalized table", @"title",
                               @"Chris Su",@"author",nil];
    
    NSDictionary *blogPost5 = [NSDictionary dictionaryWithObjectsAndKeys:
                               @"stucture of HTML", @"title",
                               @"Some dude",@"author",nil];
    
    NSDictionary *blogPost6 = [NSDictionary dictionaryWithObjectsAndKeys:
                               @"CSS3 meida query", @"title",
                               @"Chris Su",@"author",nil];
    
    NSDictionary *blogPost7 = [NSDictionary dictionaryWithObjectsAndKeys:
                               @"node.js the none blocking server side lanague", @"title",
                               @"Chris Su",@"author",nil];
    
    NSDictionary *blogPost8 = [NSDictionary dictionaryWithObjectsAndKeys:
                               @"PHP FrameWork laravel 5.1", @"title",
                               @"Chris Su",@"author",nil];
    
    NSDictionary *blogPost9 = [NSDictionary dictionaryWithObjectsAndKeys:
                               @"The Linux command lines", @"title",
                               @"Chris Su",@"author",nil];
    
    self.blogPosts = [NSArray arrayWithObjects:
                      blogPost1,
                      blogPost2,
                      blogPost3,
                      blogPost4,
                      blogPost5,
                      blogPost6,
                      blogPost7,
                      blogPost8,
                      blogPost9,
                      nil];
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
    NSDictionary *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
    cell.textLabel.text = [blogPost valueForKey:@"title"];
    cell.detailTextLabel.text = [blogPost valueForKey:@"author"];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
