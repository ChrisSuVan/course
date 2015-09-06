//
//  ViewController.h
//  BuildaSimpleiPhoneApp
//
//  Created by Jian Su on 2015-09-03.
//  Copyright (c) 2015 Jian Su. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FactBook;
@class ColorWheel;

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *funFactLabel;
@property (strong,  nonatomic) FactBook* factBook;
@property (strong, nonatomic) ColorWheel *colorWheel;
@property (weak, nonatomic) IBOutlet UIButton *funFactButton;
@end

