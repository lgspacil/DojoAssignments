//
//  ViewController.swift
//  madlibs
//
//  Created by Lucas Spacil on 7/12/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class ViewController: UIViewController, WordInputViewControllerDelegate {
    
    
    
    
    @IBOutlet weak var textContent: UITextView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nav = segue.destination as! WordInputViewController
        nav.delegate = self
        
        
    }
    
    func wordSubitted(by controller: WordInputViewController, with dict: Dictionary<String, String>){
        
        print(dict)
        
        textContent.text = "We are having a \(dict["adjective"]!) crazy time now. Later we will \(dict["verb1"]!) and \(dict["verb2"]!) in the \(dict["noun"]!)"
        
    }


}

