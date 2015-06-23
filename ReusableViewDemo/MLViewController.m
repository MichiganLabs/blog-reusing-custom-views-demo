//
//  MLViewController.m
//  ReusableViewDemo
//
//  Created by Jeff Kloosterman on 6/23/15.
//  Copyright (c) 2015 Jeff Kloosterman. All rights reserved.
//

#import "MLViewController.h"
#import "PlayButtonView.h"

@interface MLViewController ()

@end

@implementation MLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    PlayButtonView *play1 = [[[NSBundle mainBundle] loadNibNamed:@"PlayButtonView" owner:nil options:nil] firstObject];
    PlayButtonView *play2 = [[[NSBundle mainBundle] loadNibNamed:@"PlayButtonView" owner:nil options:nil] firstObject];
    PlayButtonView *play3 = [[[NSBundle mainBundle] loadNibNamed:@"PlayButtonView" owner:nil options:nil] firstObject];

    [self.container1 addSubview:play1];
    [self.container2 addSubview:play2];
    [self.container3 addSubview:play3];
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end
