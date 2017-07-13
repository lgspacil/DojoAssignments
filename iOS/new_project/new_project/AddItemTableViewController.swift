//
//  AddItemTableViewController.swift
//  new_project
//
//  Created by Lucas Spacil on 7/11/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    
    
    var delegaate: AddItemTableViewControllerDelegate?
    
    var item: String?
    
    var indexPath: NSIndexPath?
    
    @IBOutlet weak var itemTextField: UITextField!
    
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        print("cancel")
        delegaate?.cancelButtonPressed(by: self)
    }

    @IBAction func saveButtonPressed(_ sender: Any) {
        let text = itemTextField.text!
        delegaate?.itemSaved(by: self, with: text, at: indexPath)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemTextField.text = item
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
