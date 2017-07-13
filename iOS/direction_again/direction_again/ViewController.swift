//
//  ViewController.swift
//  direction_again
//
//  Created by Lucas Spacil on 7/12/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func DirectionButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "arrow", sender: sender.titleLabel?.text)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let name = sender as! String
        let nav = segue.destination as! OneDirectionViewController
        
        nav.directionName = name
    }


}

