//
//  PCspinnerDemoViewController.m
//  PCSpinner
//
//  Created by Pierre Castex on 01/08/13.
//  Copyright (c) 2013 com.pedrocactus.ios. All rights reserved.
//

#import "PCspinnerDemoViewController.h"
#import "PCSpinner.h"

@interface PCspinnerDemoViewController ()

@end

@implementation PCspinnerDemoViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	CGRect frame = CGRectMake(0, 0, 100, 30);
    NSMutableDictionary *dico = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"item1",@"activated",@"item2",@"desactivated", nil];
    _spinner = [[PCSpinner alloc] initWithFrame:frame withDictionary:dico];
    _spinner.dropDownCellForRowAtPath = ^(NSIndexPath *path){
        UITableViewCell *cell = [[UITableViewCell alloc] initWithFrame:frame];
        cell.textLabel.text = @"yes";
        return cell;
    };
    _spinner.dropDownHeightForRowAtPath =  ^(NSIndexPath *path){
        return 30;
    };
    
    [self.view addSubview:_spinner];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
