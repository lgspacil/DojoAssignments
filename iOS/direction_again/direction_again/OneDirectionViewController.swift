//
//  OneDirectionViewController.swift
//  direction_again
//
//  Created by Lucas Spacil on 7/12/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class OneDirectionViewController: UIViewController {
    
    var directionName : String?
    
    
    @IBOutlet weak var largeButtonText: UIButton!
    
    
    
    @IBAction func largeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        largeButtonText.setTitle(directionName, for: .normal)
        
        if (directionName != nil){
                print(directionName!)
        }
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
