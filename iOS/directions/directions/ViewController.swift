//
//  ViewController.swift
//  directions
//
//  Created by Lucas Spacil on 7/11/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBAction func directionButtonPressed(_ sender: UIButton) {
        print(sender)
        performSegue(withIdentifier: "DirectionSegue", sender: sender.titleLabel!.text)
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
        let direction = sender as! String
        let controller = segue.destination as! DirectionalDestinationViewController
        
        controller.direction = direction
        
        
    }


}

