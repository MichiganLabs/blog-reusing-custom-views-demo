//
//  MLContainerView.m
//  ReusableViewDemo
//
//  Created by Jeff Kloosterman on 6/23/15.
//  Copyright (c) 2015 Jeff Kloosterman. All rights reserved.
//

#import "MLContainerView.h"

@implementation MLContainerView

- (void)didAddSubview:(UIView *)subview
{
    [super didAddSubview:subview];
    [subview setTranslatesAutoresizingMaskIntoConstraints:NO];
    NSDictionary *views = @{ @"sub" : subview };

    NSMutableArray *constraints = [NSMutableArray new];
    [constraints
        addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[sub]|"
                                                                    options:NSLayoutFormatDirectionLeadingToTrailing
                                                                    metrics:nil
                                                                      views:views]];
    [constraints
        addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[sub]|"
                                                                    options:NSLayoutFormatDirectionLeadingToTrailing
                                                                    metrics:nil
                                                                      views:views]];
    [self addConstraints:constraints];
}

@end
