//
//  WordInputViewController.swift
//  madlibs
//
//  Created by Lucas Spacil on 7/12/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class WordInputViewController: UIViewController {
    
    var delegate: WordInputViewControllerDelegate?
    
    @IBOutlet weak var adjective: UITextField!
    @IBOutlet weak var verb1: UITextField!
    @IBOutlet weak var verb2: UITextField!
    @IBOutlet weak var noun: UITextField!
    
    
    @IBAction func submitButtonPressed(_ sender: Any) {
        var dict = [String: String]()
        
        dict = [
            "adjective": adjective.text!,
            "verb1": verb1.text!,
            "verb2": verb2.text!,
            "noun" : noun.text!
        ]
        
        delegate?.wordSubitted(by: self, with: dict)
        
        print("button was pressed")
        dismiss(animated: true, completion: nil)

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 

}
