//
//  ViewController.swift
//  practiceUnwind
//
//  Created by Lucas Spacil on 7/20/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstVCLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func unwindToFirstVC(segue: UIStoryboardSegue){
        print("going back to the first VC")
        
        let secondVC = segue.source as! SecondViewController
        print(secondVC.textInfo.text!)
        firstVCLabel.text = secondVC.textInfo.text!
    }

}

