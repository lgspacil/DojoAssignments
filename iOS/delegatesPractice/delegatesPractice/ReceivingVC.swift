//
//  ReceivingVC
//  delegatesPractice
//
//  Created by Lucas Spacil on 7/10/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

//conform to the delegate we made, so we should add DataSentDelegate to the type 
//we need to make sure that this class will have all of the same functions that was descibed in the DataSentDelegate


class ReceivingVC: UIViewController, DataSentDelegate {

    @IBOutlet weak var receivingTextField: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //need to add the function that was in the DataSentDelegate protocol
    //to get the information from the other screen we passed it through the protocol and called it here
    func userDidEnterData(data: String){
        
        //set the receivingTextfieldLabel to equal the string data
        receivingTextField.text = data
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC"{
            let sendingVC: SendingVC = segue.destination as! SendingVC
            sendingVC.delegate = self
        }
    }
    


}

