//
//  AppDelegate.h
//  Clicker
//
//  Created by Conal Da Costa on 2013/02/19.
//  Copyright (c) 2013 Conal Da Costa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClickerController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ClickerController *clickerController;
@end
