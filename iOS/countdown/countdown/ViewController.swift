//
//  ViewController.swift
//  countdown
//
//  Created by Lucas Spacil on 7/9/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var seconds = 30
    var timer = Timer()
    
    func counter() {
        seconds -= 1
        self.label.text = ("\(String(seconds)) seconds")
        
        if seconds == 0{
            timer.invalidate()
        }
        
    }

    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBAction func slider(_ sender: UISlider) {
        seconds = Int(sender.value)
        label.text = String(seconds)
    }
    
    
    @IBOutlet weak var startOutlet: UIButton!
    @IBAction func start(_ sender: UIButton) {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {_ in
            self.counter()
        }
    )}
    
   
    
    @IBOutlet weak var stopOutlet: UIButton!
    @IBAction func stop(_ sender: UIButton) {
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

