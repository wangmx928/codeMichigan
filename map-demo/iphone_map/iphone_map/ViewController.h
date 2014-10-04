//
//  ViewController.h
//  iphone_map
//
//  Created by miaoxin wang on 14-10-3.
//  Copyright (c) 2014年 University of Michigan, Ann Arbor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController<CLLocationManagerDelegate>{
    IBOutlet MKMapView *mapView;}

@end

