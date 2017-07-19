//
//  SelectedViewController.swift
//  core_data_prac_2
//
//  Created by Lucas Spacil on 7/15/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class SelectedViewController: UIViewController {
    
    
    var delegate: ViewController?
    
    var specialWords = [Users]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        print("the special words are: \(specialWords)")
        
        showInfo()
    }
    
    func showInfo() {
        
        
        for word in specialWords{
            if (word.username!) == "Lucas"{
                print(word.username!)
            }
        }
    }
    
    
    
    

   
    
    
    
    


}
