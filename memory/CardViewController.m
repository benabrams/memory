//
//  CardViewController.m
//  memory
//
//  Created by Ben Abrams on 10/25/12.
//  Copyright (c) 2012 Ben Abrams. All rights reserved.
//

#import "CardViewController.h"
#import "Card.h"
@interface CardViewController () {

IBOutlet UILabel* oMissesLabel;
IBOutlet UILabel* oMatchedLabel;
NSMutableArray *myImageNames;
NSMutableArray *myImagesShown;

    int mMisses;
    int mMatches;

}

-(void)_tagViews;
-(void)_match;
-(void)_miss;
-(void)pushGenerateImage:(UIButton *)myButton; //method to pick random image and assign it to button

@end

@implementation CardViewController


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
    myImagesShown = [[NSMutableArray alloc] init ];
    // Do any additional setup after loading the view from its nib.
    myImageNames = [[NSMutableArray alloc] initWithCapacity:12];
    [myImageNames addObjectsFromArray:[NSArray arrayWithObjects:@"feline1.jpg", @"feline2.jpg", @"feline3.jpg", @"feline4.jpg", @"feline5.jpg", @"feline6.jpg", @"feline1.jpg", @"feline2.jpg", @"feline3.jpg", @"feline4.jpg", @"feline5.jpg", @"feline6.jpg", nil]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)buttonTapped:(id)sender
{
    Card *button = (Card *)sender;
    
    if (button.selected) {
        [button setSelected:NO];
        [button setImage:nil forState:UIControlStateNormal];
    } else {
        [button setSelected:YES];
        [self pushGenerateImage:button];
    }
}


-(void)_tagViews
{
    
}


//randomization

-(void)pushGenerateImage:(UIButton *)myButton
{
    int randomNumber = arc4random() % [myImageNames count];
    
    NSString *randomImageName = [myImageNames objectAtIndex:randomNumber];
    
    UIImage *randomImage = [UIImage imageNamed:randomImageName];
    
    [myButton setImage:randomImage forState:UIControlStateNormal];
    
    [myImageNames removeObjectAtIndex:randomNumber]; //removes image so that it can't be re-used
    
    NSLog(@"myImageNames: %@", myImageNames);
}



-(void)_miss
{
    mMisses++;
    oMissesLabel.text = [NSString stringWithFormat:@"%i", mMisses];
}

-(void)_match
{
    mMatches++;
    oMatchedLabel.text = [NSString stringWithFormat:@"%i", mMatches];
}

@end
