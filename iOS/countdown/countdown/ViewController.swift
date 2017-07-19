//
//  ViewController.swift
//  countdown
//
//  Created by Lucas Spacil on 7/9/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var min = 0
    var hour = 0
    var timer = Timer()
    
    func counter() {
        min += 1
        self.label.text = ("\(String(hour)) hour and \(String(min)) minutes")
        
        //where to stop the timer
        if min == 12 && hour == 1{
            stopTimer()
        }
        
        if min % 60 == 0{
            min = min % 60
            hour += 1
        }
        
        else if min > 60{
            min = min % 60
            hour = min / 60
        }
        
        print(min)
        
    }

    @IBOutlet weak var label: UILabel!
    
    
    
    
    @IBAction func start(_ sender: UIButton) {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: {_ in
            self.counter()
        }
    )}
    
    //stopping the timer and printing out how long you stayed at the gym
    func stopTimer() {
        timer.invalidate()
        
        
        let alert = UIAlertController(title: "Success", message: "You completed your daily goal!", preferredStyle: .alert)
        let OkAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(OkAction)
        self.present(alert, animated: true, completion: nil)
        
        
        let currentTimeInMin = self.min
        min = 0
        label.text = ("\(String(min)) minutes")
        print("the total time at the gym is: \(String(hour)) hour and \(String(currentTimeInMin))")
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

