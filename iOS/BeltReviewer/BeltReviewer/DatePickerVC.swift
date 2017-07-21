//
//  DatePickerVC.swift
//  BeltReviewer
//
//  Created by Lucas Spacil on 7/20/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class DatePickerVC: UIViewController {

    
    @IBOutlet weak var shortText: UILabel!
    @IBOutlet weak var mediumText: UILabel!
    @IBOutlet weak var longText: UILabel!
    
    
    @IBAction func datePickerChanged(_ sender: Any) {
        
        let formatterS = DateFormatter()
        formatterS.dateStyle = .short
        formatterS.timeStyle = .none
        
        let formatterM = DateFormatter()
        formatterM.dateStyle = .medium
        formatterM.timeStyle = .none
        
        let formatterL = DateFormatter()
        formatterL.dateStyle = .long
        formatterL.timeStyle = .none
        
        shortText.text = formatterS.string(from: (sender as AnyObject).date)
        mediumText.text = formatterM.string(from: (sender as AnyObject).date)
        longText.text = formatterL.string(from: (sender as AnyObject).date)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

}
