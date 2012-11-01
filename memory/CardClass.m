//
//  CardClass.m
//  memory
//
//  Created by Ben Abrams on 10/23/12.
//  Copyright (c) 2012 Ben Abrams. All rights reserved.
//

#import "CardClass.h"

@implementation CardClass

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event //method signature
{
    NSLog(@"test");
//    NSLog(@"touch test");
//    [self setHighlighted:true];
//    [self setUserInteractionEnabled:false];
}



@end
