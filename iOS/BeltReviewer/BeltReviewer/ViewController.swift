//
//  ViewController.swift
//  BeltReviewer
//
//  Created by Lucas Spacil on 7/20/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var toggle: UISwitch!

    
    @IBAction func togglePressed(_ sender: Any) {
        
        if toggle.isOn {
            labelText.text = "Switch is on!"
        } else{
            labelText.text = "Switch is off!"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

