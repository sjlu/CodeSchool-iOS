//
//  ViewController.m
//  CodeSchool
//
//  Created by Steven Lu on 10/2/13.
//  Copyright (c) 2013 Steven Lu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  self.view.backgroundColor = [UIColor colorWithRed:0.462 green:0.749 blue: 0.937 alpha: 1.0];
}

- (void)loadView
{
  CGRect viewRect = [[UIScreen mainScreen] bounds];
  UIView *view = [[UIView alloc] initWithFrame:viewRect];
  self.view = view;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
  self.view.backgroundColor = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
  self.view.alpha = ((double)arc4random() / 0x100000000);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
