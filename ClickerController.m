//
//  ClickerController.m
//  Clicker
//
//  Created by Conal Da Costa on 2013/02/19.
//  Copyright (c) 2013 Conal Da Costa. All rights reserved.
//

#import "ClickerController.h"
#import "SFHFKeychainUtils.h"
@interface ClickerController ()

@end

@implementation ClickerController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor blackColor];
    _screenBounds = [[UIScreen mainScreen] bounds];
    NSString *remember = [SFHFKeychainUtils getPasswordForUsername:@"clicks" andServiceName:@"Clicker" error:nil];
    if ([remember length]==0)
    {
        _clicks = [remember integerValue];
    }
    else{
        _clicks = 0;
    }
    
    _clickButton = [[CustomClicker alloc]initWithFrame:CGRectMake((_screenBounds.size.width/2)-50, ((_screenBounds.size.width/4)*3)+25, 100, 100)];
    [_clickButton addTarget:self action:@selector(increment) forControlEvents:UIControlEventTouchUpInside];
    _clickCounter = [[UILabel alloc]initWithFrame:CGRectMake(0, (_screenBounds.size.width/4), _screenBounds.size.width, 100)];
    _clickCounter.textAlignment = NSTextAlignmentCenter;
    _clickCounter.textColor = [UIColor greenColor];
    _clickCounter.text = [NSString stringWithFormat:@"%i",_clicks];
    _clickCounter.backgroundColor = [UIColor clearColor];
    _clickCounter.font = [UIFont fontWithName:@"Chalkduster" size:100.0];
    
    _resetButton = [[UIButton alloc]initWithFrame:CGRectMake(10,10, 100, 100)];

    [_resetButton setImage:[UIImage imageNamed:@"reset_button.png"] forState:UIControlStateNormal];
    [_resetButton addTarget:self action:@selector(reset) forControlEvents:UIControlEventTouchUpInside];
    
   
    [self.view addSubview:_clickCounter];
    [self.view addSubview:_clickButton];
    [self.view addSubview:_resetButton];
}
-(void)increment
{
    _clicks=_clicks+1;
    [SFHFKeychainUtils storeUsername:@"clicks" andPassword:[NSString stringWithFormat:@"%i", _clicks] forServiceName:@"Clicker" updateExisting:TRUE error:nil];
   
    _clickCounter.text = [NSString stringWithFormat:@"%i",_clicks];
}

-(void)reset
{
    _clicks = 0;
    [SFHFKeychainUtils storeUsername:@"clicks" andPassword:[NSString stringWithFormat:@"%i", _clicks] forServiceName:@"Clicker" updateExisting:TRUE error:nil];
    _clickCounter.text = [NSString stringWithFormat:@"%i",_clicks];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
