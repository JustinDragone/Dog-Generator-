//
//  JDPuppy.m
//  Man's Best Friend
//
//  Created by Justin on 4/20/14.
//  Copyright (c) 2014 Justin. All rights reserved.
//

#import "JDPuppy.h"

@implementation JDPuppy

-(void)givePuppyEyes
{
    NSLog(@":(");
}

-(void)bark
{
    [super bark];
    NSLog(@"whimper whimper");
    [self givePuppyEyes];
}

@end
