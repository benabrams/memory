//
//  ViewController.m
//  memory
//
//  Created by Ben Abrams on 10/23/12.
//  Copyright (c) 2012 Ben Abrams. All rights reserved.
//

#import "ViewController.h"
#import "CardClass.h"
@interface ViewController ()

@end

@implementation ViewController

@synthesize imageOne;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
