//
//  AddItemTableViewController.swift
//  bucket
//
//  Created by Lucas Spacil on 7/10/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    
    var delegate: AddItemTableViewControllerDelegate?
    
    var item: String?
    var indexPath: NSIndexPath?
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        let text = textField.text!
        
        delegate?.itemSaved(by: self, with: text, at: indexPath)
    }
    @IBAction func cencelButtonPressed(_ sender: Any) {
        print("cancel button pressed")
        delegate?.cancelButtonPressed(by: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.text = item

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  

}
