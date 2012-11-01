//
//  CardViewController.h
//  memory
//
//  Created by Ben Abrams on 10/25/12.
//  Copyright (c) 2012 Ben Abrams. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CardViewController : UIViewController
@property (nonatomic, assign) IBOutlet UIButton *button1;
@property (nonatomic, assign)IBOutlet UIButton *button2;
@property (nonatomic, assign)IBOutlet UIButton *button3;
@property (nonatomic, assign)IBOutlet UIButton *button4;
@property (nonatomic, assign)IBOutlet UIButton *button5;
@property (nonatomic, assign)IBOutlet UIButton *button6;
@property (nonatomic, assign)IBOutlet UIButton *button7;
@property (nonatomic, assign)IBOutlet UIButton *button8;
@property (nonatomic, assign)IBOutlet UIButton *button9;
@property (nonatomic, assign)IBOutlet UIButton *button10;
@property (nonatomic, assign)IBOutlet UIButton *button11;
@property (nonatomic, assign)IBOutlet UIButton *button12;

-(IBAction)buttonTapped:(id)sender;


@end
