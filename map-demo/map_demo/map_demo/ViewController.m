//
//  ViewController.m
//  map_demo
//
//  Created by miaoxin wang on 14-10-3.
//  Copyright (c) 2014年 University of Michigan, Ann Arbor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController @synthesize mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.mapView.showsUserLocation = YES;
    self.mapView.zoomEnabled = YES;
    self.mapView.scrollEnabled = YES;
    self.mapView.mapType = MKMapTypeStandard;
    self.mapView.delegate = self;
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    
    MKCoordinateRegion region =MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 600, 600);
    
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = userLocation.coordinate;
    point.title = @"Your Location";
    point.subtitle = @"Can you see me?";
    [self.mapView addAnnotation:point];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
