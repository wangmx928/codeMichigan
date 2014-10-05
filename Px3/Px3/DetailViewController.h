//
//  DetailViewController.h
//  Px3
//
//  Created by Ni Yan on 10/4/14.
//  Copyright (c) 2014 nyan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "px3-Swift.h"

@interface DetailViewController: UIViewController

@property (strong, nonatomic) Vendor *vendor;

@property (weak, nonatomic) IBOutlet UIImageView *categoryLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UITextView *nameTextField;

@property (weak, nonatomic) IBOutlet UILabel *distanceLabel;

@property (weak, nonatomic) IBOutlet UILabel *discountLabel;
@property (weak, nonatomic) IBOutlet UITextView *discountText;

@property (weak, nonatomic) IBOutlet UIImageView *webImage;
@property (weak, nonatomic) IBOutlet UILabel *webLabel;


@property (weak, nonatomic) IBOutlet UIImageView *phoneImage;
@property (weak, nonatomic) IBOutlet UILabel *phoneLabel;


@property (weak, nonatomic) IBOutlet UIImageView *addressImage;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;


@end
