//
//  Card.h
//  memory
//
//  Created by Ben Abrams on 10/25/12.
//  Copyright (c) 2012 Ben Abrams. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Card : UIButton

@property (nonatomic, readwrite) NSInteger catNumber;
@property (nonatomic, assign) NSString *imageName;

@end
