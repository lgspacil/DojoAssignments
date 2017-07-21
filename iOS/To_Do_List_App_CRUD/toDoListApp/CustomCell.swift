//
//  CustomCell.swift
//  toDoListApp
//
//  Created by Lucas Spacil on 7/16/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var date: UILabel!
    
    @IBOutlet weak var descriptionText: UILabel!
    
    @IBAction func goBackButtonPressed(_ sender: Any) {
        print("back button clicked")
        
    }

}
