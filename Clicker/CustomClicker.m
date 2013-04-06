//
//  CustomClicker.m
//  Clicker
//
//  Created by Conal Da Costa on 2013/02/19.
//  Copyright (c) 2013 Conal Da Costa. All rights reserved.
//

#import "CustomClicker.h"

@implementation CustomClicker

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setImage:[UIImage imageNamed:@"Round_glossy_green_button.png"] forState:UIControlStateNormal];
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

@end
