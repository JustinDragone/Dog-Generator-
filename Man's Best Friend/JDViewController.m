//
//  JDViewController.m
//  Man's Best Friend
//
//  Created by Justin on 4/19/14.
//  Copyright (c) 2014 Justin. All rights reserved.
//

#import "JDViewController.h"
#import "JDDog.h"
#import "JDPuppy.h"

@interface JDViewController ()

@end

@implementation JDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    JDDog *myDog = [[JDDog alloc] init];
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";
    myDog.age = 1;
    myDog.image = [UIImage imageNamed:@"St.Bernard.JPG"];
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    self.currentIndex = 0;
    
    JDDog *secondDog = [[JDDog alloc] init];
    secondDog.name = @"Wishbone";
    secondDog.breed = @"Jack Russell Terrier";
    secondDog.image = [UIImage imageNamed:@"JRT.jpg"];
    
    JDDog *thirdDog = [[JDDog alloc] init];
    thirdDog.name = @"Lassie";
    thirdDog.breed = @"Collie";
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    JDDog *fourthDog = [[JDDog alloc] init];
    fourthDog.name = @"Angel";
    fourthDog.breed = @"Greyhound";
    fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    
    JDPuppy *littlePuppy = [[JDPuppy alloc] init];
    [littlePuppy bark];
    littlePuppy.name = @"Bo O";
    littlePuppy.breed = @"Portuguese Water Dog";
    littlePuppy.image = [UIImage imageNamed:@"Bo.jpg"];
    [self.myDogs addObject:littlePuppy];
    
    JDPuppy *secondPuppy = [[JDPuppy alloc] init];
    secondPuppy.name = @"Snowy";
    secondPuppy.breed = @"Siberian Husky";
    secondPuppy.image = [UIImage imageNamed:@"Husky.jpg"];
    [self.myDogs addObject:secondPuppy];
    
    JDPuppy *thirdPuppy = [[JDPuppy alloc] init];
    thirdPuppy.name = @"Fluffy";
    thirdPuppy.breed = @"Pomeranian";
    thirdPuppy.image = [UIImage imageNamed:@"Fluffy.jpg"];
    [self.myDogs addObject:thirdPuppy];
    
    NSLog(@"%@", self.myDogs);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender
{
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    
    if (self.currentIndex == randomIndex && self.currentIndex == 0){
        randomIndex ++;
    }
    else if (self.currentIndex == randomIndex){
        randomIndex --;
    }
    
    JDDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    
//    self.myImageView.image = randomDog.image;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;
    
    [UIView transitionWithView:self.view duration:2.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.breedLabel.text = randomDog.breed;
        self.nameLabel.text = randomDog.name;
    } completion:^(BOOL finished) {
        
    }];
    
    sender.title = @"And Another";
}

@end
