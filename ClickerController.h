//
//  ClickerController.h
//  Clicker
//
//  Created by Conal Da Costa on 2013/02/19.
//  Copyright (c) 2013 Conal Da Costa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomClicker.h"
@interface ClickerController : UIViewController
@property (nonatomic, strong)CustomClicker *clickButton;
@property (nonatomic, strong)UILabel *clickCounter;
@property CGRect screenBounds;
@property NSInteger clicks;
@property UIButton *resetButton;
-(void)increment;
@end
