//
//  ColorWheel.h
//  BuildaSimpleiPhoneApp
//
//  Created by Jian Su on 2015-09-04.
//  Copyright (c) 2015 Jian Su. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ColorWheel : NSObject

@property (strong,nonatomic) NSArray *colors;
-(UIColor*)randomColor;

@end
