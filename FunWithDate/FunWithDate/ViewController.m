//
//  ViewController.m
//  FunWithDate
//
//  Created by Jian Su on 9/23/15.
//  Copyright © 2015 Jian Su. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSDate *today = [NSDate date];
    
    NSTimeInterval secPerSingleDay = 60 * 60 * 24;
    NSDate* tommorrow = [NSDate dateWithTimeIntervalSinceNow:secPerSingleDay];
    
    //create dat formatter
    NSDateFormatter* formatter = [[NSDateFormatter alloc]init];
    
    //set the format you want
    [formatter setDateFormat:@"yyyy/mm/dd"];
    
    //stored the correct format for date
    NSString* DateFormated = [formatter stringFromDate:today];
    
    //date object that is 10 days from today and call it 'futureDate'
    NSTimeInterval secondsForTenDays = 60 * 60 * 24 * 10;
    NSDate *futureDate = [[NSDate alloc] init];
    futureDate = [NSDate dateWithTimeIntervalSinceNow:secondsForTenDays];
    
    NSLog(@"%@", DateFormated);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
