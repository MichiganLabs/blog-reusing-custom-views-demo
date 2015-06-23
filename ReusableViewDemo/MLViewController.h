//
//  MLViewController.h
//  ReusableViewDemo
//
//  Created by Jeff Kloosterman on 6/23/15.
//  Copyright (c) 2015 Jeff Kloosterman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MLContainerView.h"

@interface MLViewController : UIViewController
@property(weak, nonatomic) IBOutlet MLContainerView *container1;
@property(weak, nonatomic) IBOutlet MLContainerView *container2;
@property(weak, nonatomic) IBOutlet MLContainerView *container3;

@end
