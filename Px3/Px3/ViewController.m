//
//  ViewController.m
//  Px3
//
//  Created by Ni Yan on 10/3/14.
//  Copyright (c) 2014 nyan. All rights reserved.
//

#import "ViewController.h"
#import "Px3-Swift.h" //project name-Swift to import swift
#import "DetailViewController.h"

@class Vendor;
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *vendorTable;

@property (strong, nonatomic) NSArray *arrayOfVendors;

@end

@implementation ViewController

    @synthesize scroller;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupVender];
    [self.vendorTable setDelegate:self];
    [self.VendorTable setDataSource:self];
    [scroller setScrollEnabled:(YES)];
    [scroller setContentSize:CGSizeMake(320, 1051)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupVender {
    Vendor *vendor1 = [[Vendor alloc] initWithName:@"A Little Off The Top Lawn and Snow" discount:@"10% off all lawn cuts w/purchase of season" category:@"home.png" distance:5.5];
    Vendor *vendor2 = [[Vendor alloc] initWithName:@"AC Natural Foods" discount:@"10% off total bill in the store" category:@"food.png" distance:2.5];
    Vendor *vendor3 = [[Vendor alloc] initWithName:@"Affordable Design Solutions" discount:@"15% off vinyl signs and banners - 20% off website" category:@"business.png" distance:2.5];
    Vendor *vendor4 = [[Vendor alloc] initWithName:@"Alex Doucett's" discount:@"10% off one regular priced item" category:@"shopping.png" distance:3.5];
    Vendor *vendor5 = [[Vendor alloc] initWithName:@"All Around Portable Welding" discount:@"5% off on any repair" category:@"construction.png" distance:1.5];
    Vendor *vendor6 = [[Vendor alloc] initWithName:@"AAcapulco Gold" discount:@"15% off regularly priced packages / lotions" category:@"personal.png" distance:1.5];
    Vendor *vendor7 = [[Vendor alloc] initWithName:@"Adventure Mining Co." discount:@"10% off all mine tours" category:@"sports.png" distance:1.5];
    Vendor *vendor8 = [[Vendor alloc] initWithName:@"Complete Battery Source" discount:@"5% off retail price for any Automotive, Truck, Marine, or PowerSports battery!" category:@"automotive.png" distance:1.5];
    self.arrayOfVendors = @[vendor1, vendor2, vendor3, vendor4, vendor5, vendor6, vendor7,vendor8]; //call setup
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.arrayOfVendors count];
    //NSLog(@"Dili here duh");
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = (CustomCell *)[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    Vendor *vendor = self.arrayOfVendors[indexPath.row];
    
    [cell setCell:vendor.name discountText:vendor.discount categoryText:vendor.category distanceDouble:vendor.distance]; //Call the function setCell
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"detailSegue"]) {
        DetailViewController *vc = (DetailViewController *)segue.destinationViewController;
        vc.vendor = self.arrayOfVendors[[self.VendorTable indexPathForSelectedRow].row];
    }
}

@end
