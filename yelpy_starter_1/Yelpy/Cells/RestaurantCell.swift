//
//  RestaurantCell.swift
//  Yelpy
//
//  Created by Shashanka Sharma on 9/25/21.
//  Copyright © 2021 memo. All rights reserved.
//

import Foundation
import UIKit

class RestaurantCell: UITableCell {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var restaurantImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated:animated)
    }
}


