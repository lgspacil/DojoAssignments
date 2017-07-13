//
//  DirectionalDestinationViewController.swift
//  directions
//
//  Created by Lucas Spacil on 7/11/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class DirectionalDestinationViewController: UIViewController {
    
    @IBOutlet weak var mainDirectionButtonLabel: UIButton!
    
    var direction: String?

    @IBAction func mainDirectionButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainDirectionButtonLabel.setTitle(direction, for: .normal)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
