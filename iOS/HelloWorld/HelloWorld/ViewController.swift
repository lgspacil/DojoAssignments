//
//  ViewController.swift
//  HelloWorld
//
//  Created by Lucas Spacil on 7/5/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var poem = ["My name is Lucas",
                "Lucas Spacil",
                "I will be good at code"]
    
    @IBOutlet weak var poemLabel: UITextField!

    @IBAction func nextButtonPressed(_ sender: Any) {
        poemLabel.text = "hello"
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

