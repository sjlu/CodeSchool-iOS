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

  UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
  [firstButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
  firstButton.frame = CGRectMake(100, 100, 100, 44);
  [firstButton setTitle:@"Click me!" forState:UIControlStateNormal];
  [firstButton setTitle:@"Clicked!" forState:UIControlStateHighlighted];

  [self.view addSubview:firstButton];

  UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 30, 200, 44)];
  firstLabel.backgroundColor = [UIColor clearColor];
  firstLabel.text = @"Hello, welcome to my app!";

  [self.view addSubview:firstLabel];
}

- (void)buttonPressed:(UIButton *)sender
{
  NSLog(@"Button pressed, sender: %@", sender);
  self.view.alpha = ((double)arc4random() / 0x100000000);
  [sender removeFromSuperview];
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
