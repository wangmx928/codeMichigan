//
//  UIViewController+DetailV.m
//  Px3
//
//  Created by Ni Yan on 10/4/14.
//  Copyright (c) 2014 nyan. All rights reserved.
//

#import "DetailViewController.h"

@implementation DetailViewController

- (void)viewDidLoad{
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated { //Send value from the array to the detail page
    [super viewWillAppear:animated];
    self.nameTextField.text = self.vendor.name;//vendor name
    self.discountText.text = self.vendor.discount;//discount content
    self.categoryLabel.image= [UIImage imageNamed:self.vendor.category];//category icon
    self.distanceLabel.text = [NSString stringWithFormat:@"%.1f mi", self.vendor.distance];//distance
    
    self.webImage.image = [UIImage imageNamed:@"website.png"];//Website icon
    self.phoneImage.image = [UIImage imageNamed:@"phone.png"];//Phone icon
    self.addressImage.image = [UIImage imageNamed:@"address.png"];//Address icon

    

}

@end
