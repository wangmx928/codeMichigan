//
//  CustomCell.swift
//  Px3
//
//  Created by Ni Yan on 10/4/14.
//  Copyright (c) 2014 nyan. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var Category: UIImageView!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Discount: UILabel!
    @IBOutlet weak var Distance: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    internal func setCell(nameText: String, discountText: String, categoryText: String, distanceDouble: Double)
    {
        self.Name.text = nameText
        self.Discount.text = discountText
        self.Distance.text = String(format:"%.1f mi",distanceDouble) //Double to String, need formator
        self.Category.image = UIImage(named: categoryText)
        
    }

}
