//
//  ViewController.m
//  Compass
//
//  Created by Anastasiia Staiko on 3/7/16.
//  Copyright © 2016 Anastasiia Staiko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) BOOL initAngleOfCompass;

@end

@implementation ViewController
@synthesize needle;
@synthesize locationManager = _locationManager;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([CLLocationManager headingAvailable]) {
        self.locationManager = [[CLLocationManager alloc] init];
        self.locationManager.delegate = self;
        self.locationManager.headingFilter = 2;
        [self.locationManager startUpdatingHeading];
        _initAngleOfCompass = YES;
    } else {
        NSLog(@"something went wrong");
    }
}


-(void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading {
    NSLog(@"magneticHeading direction is %f", newHeading.magneticHeading);
    NSLog(@"trueHeading direction is %f", newHeading.trueHeading);

    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    self.compass.transform = CGAffineTransformMakeRotation(M_PI / 180 * (360-newHeading.trueHeading));
    [UIView commitAnimations];
}

@end
