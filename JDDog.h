//
//  JDDog.h
//  Man's Best Friend
//
//  Created by Justin on 4/19/14.
//  Copyright (c) 2014 Justin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JDDog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *name;

-(void)bark;
-(void)barkANumberOfTimes:(int)numberOfTimes;
-(void)changeBreedToWerewolf;
-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
-(int)ageInDogYearsFromAge:(int)regularAge;

@end
