//
//  ViewController.m
//  iphone_map
//
//  Created by miaoxin wang on 14-10-3.
//  Copyright (c) 2014年 University of Michigan, Ann Arbor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (retain, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation ViewController @synthesize mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    mapView.showsUserLocation=YES;
    CLLocationManager *locationManager=[[CLLocationManager alloc] init];
    // build a location manager
    locationManager.delegate=self;
    //set up manager
    locationManager.desiredAccuracy=kCLLocationAccuracyBest;
    //set up the accuracy level
    locationManager.distanceFilter=1000.0f;
    //set up filter for distance
    [locationManager startUpdatingLocation];
    // start location manager
    
    
    MKCoordinateSpan theSpan;
    // the smaller the span, the more accurate it will be
    theSpan.latitudeDelta=0.05;
    theSpan.longitudeDelta=0.05;
    MKCoordinateRegion theRegion;
    theRegion.center=[[locationManager location] coordinate];
    theRegion.span=theSpan;
    [mapView setRegion:theRegion];
    [locationManager stopUpdatingLocation];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
