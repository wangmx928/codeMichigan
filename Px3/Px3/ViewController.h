//
//  ViewController.h
//  Px3
//
//  Created by Ni Yan on 10/3/14.
//  Copyright (c) 2014 nyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (weak,nonatomic) IBOutlet UIScrollView * scroller;
@property (weak, nonatomic) IBOutlet UITableView *VendorTable;




@end

