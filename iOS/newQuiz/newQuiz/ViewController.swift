//
//  ViewController.swift
//  newQuiz
//
//  Created by Lucas Spacil on 7/6/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var questionLabel: UILabel!
    
    
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    
    var CorrentAnswer = String()
   
    
    func RandomQuestions(){
        
        var randomNumber = arc4random() % 4
        randomNumber += 1
        
        switch(randomNumber){
            
        case 1:
            
            questionLabel.text = "Hello World, What is my name?"
            Button1.setTitle("Lucas", for: UIControlState.normal)
            Button2.setTitle("Monika", for: UIControlState.normal)
            Button3.setTitle("Miro", for: UIControlState.normal)
            Button4.setTitle("Martha", for: UIControlState.normal)
            CorrentAnswer = "1"
            
            break
            
        case 2:
            
            questionLabel.text = "What is my Last Name?"
            Button1.setTitle("Spacil", for: UIControlState.normal)
            Button2.setTitle("Rodgers", for: UIControlState.normal)
            Button3.setTitle("Ronaldo", for: UIControlState.normal)
            Button4.setTitle("Messi", for: UIControlState.normal)
            CorrentAnswer = "1"
            break
            
        case 3:
            break
        
        case 4:
            break
            
        default:
            break
        }
    }
    
    
    
    @IBAction func Button1Action1(_ sender: Any) {
        
        if (CorrentAnswer == "1"){
            print ("hello")
        }
    }
    
    
    @IBAction func Button2Action(_ sender: Any) {
    }
    
    
    @IBAction func Button3Action(_ sender: Any) {
    }
    
    
    @IBAction func Button4Action(_ sender: Any) {
    }
    
}

