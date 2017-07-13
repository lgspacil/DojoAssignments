//
//  SendingVC.swift
//  delegatesPractice
//
//  Created by Lucas Spacil on 7/10/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

//this is where I will send the information from this page to the receiving VC

import UIKit

//the protocol is like a blueprint
protocol DataSentDelegate {
    func userDidEnterData(data: String)
}

class SendingVC: UIViewController {
    
    @IBOutlet weak var dataEntryTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var delegate: DataSentDelegate? = nil

    @IBAction func sendBtnWasPressed(_ sender: Any) {
        //if something was typed into the bar at top
        
        if (dataEntryTextField != nil){
            
            //setting data to be the input
            let data = dataEntryTextField.text
            
            //the delegate will send the text we passed in through the function at the top "userDidEnterData" we then have to go to the receivingVC and make sure it understands that it is receiving that data
            
            delegate?.userDidEnterData(data: data!)
            dismiss(animated: true, completion: nil)
        }
    }
}
