//
//  Vendor.swift
//  Px3
//
//  Created by Ni Yan on 10/4/14.
//  Copyright (c) 2014 nyan. All rights reserved.
//

import Foundation

@objc class Vendor : NSObject //Only have "class vendor" in the tutorial
{
    var name = "name"
    var discount = "discount"
    var category = "category"
    var distance = 0.0

    override init() { //Not sure if this is useful
        super.init()
    }
    
    init(name: String, discount: String, category: String, distance: Double)
    {
        self.name = name
        self.discount = discount
        self.category = category
        self.distance = distance
        
    }
    
    internal func setName(name: String) //In the tutorial there is no such function. This is to set name
    {
        self.name = name
        //self.discount
    }
}
