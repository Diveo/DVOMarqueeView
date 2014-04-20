//
//  DVOAppDelegate.m
//  ScrollingMarquee
//
//  Created by Mo Bitar on 4/20/14.
//  Copyright (c) 2014 Diveo. All rights reserved.
//

#import "DVOAppDelegate.h"
#import "DVOMarqueeView.h"

@implementation DVOAppDelegate
{
    DVOMarqueeView *labelMarquee;
    DVOMarqueeView *viewMarquee;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    [self addLabelMarquee];
    [self addViewMarquee];
    
    return YES;
}

- (void)addViewMarquee
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.window.bounds), 100)];
    [view setBackgroundColor:[UIColor greenColor]];
    
    viewMarquee = [[DVOMarqueeView alloc] initWithFrame:CGRectMake(0, 20, CGRectGetWidth(self.window.bounds), 100)];
    viewMarquee.spaceBetweenRepeats = 30;
    viewMarquee.speed = 0.5;
    viewMarquee.viewToScroll = view;
    [self.window addSubview:viewMarquee];
    [viewMarquee beginScrolling];
}

- (void)addLabelMarquee
{
    UILabel *label = [UILabel new];
    label.text = @"To be, or not to be: that is the question: Whether 'tis nobler in the mind to suffer...";
    [label sizeToFit];
    
    labelMarquee = [[DVOMarqueeView alloc] initWithFrame:CGRectMake(0, CGRectGetMidY(self.window.bounds), CGRectGetWidth(self.window.bounds), 100)];
    labelMarquee.viewToScroll = label;
    [self.window addSubview:labelMarquee];
    
    [labelMarquee beginScrolling];
}

@end
