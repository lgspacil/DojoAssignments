//
//  CustomCell.swift
//  BeltReviewer
//
//  Created by Lucas Spacil on 7/20/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    
    @IBOutlet weak var superHero: UILabel!
    
    @IBOutlet weak var subClass: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
