//
//  AnotherViewController.swift
//  navigation
//
//  Created by Lucas Spacil on 7/7/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class AnotherViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    var output: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputLabel.text = output
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func buttonDismissed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    

}
