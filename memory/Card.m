//
//  Card.m
//  memory
//
//  Created by Ben Abrams on 10/25/12.
//  Copyright (c) 2012 Ben Abrams. All rights reserved.
//

#import "Card.h"

@implementation Card

@synthesize catNumber;
@synthesize imageName;

- (id) initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self != nil) {
        [self setBackgroundImage:[UIImage imageNamed:@"cards.jpg"] forState:UIControlStateNormal];
    
    }
    return self;
}

-(void)setCatNumber:(NSInteger)catNumberToSet
{
    self.catNumber = catNumberToSet;
    
    NSString *catImageName = [NSString stringWithFormat:@"feline%d.jpg", self.catNumber];
    [self setImage:[UIImage imageNamed:catImageName] forState:UIControlStateSelected];
    
    self.imageName = catImageName;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
