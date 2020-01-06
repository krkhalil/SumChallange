//
//  ViewController.m
//  SumChallange
//
//  Created by Macbook on 11/08/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "ViewController.h"
#import "GameVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden = true;
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = true;
}

- (IBAction)startButtonTouched:(id)sender
{
  
}

- (IBAction)easy:(id)sender
{
    GameVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"GameVC"];
    v.level = @"Easy";
    [self.navigationController pushViewController:v animated:YES];
}

- (IBAction)medium:(id)sender
{
    GameVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"GameVC"];
    v.level = @"Medium";
    [self.navigationController pushViewController:v animated:YES];
}

- (IBAction)hard:(id)sender
{
    GameVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"GameVC"];
    v.level = @"Hard";
    [self.navigationController pushViewController:v animated:YES];
}

@end
