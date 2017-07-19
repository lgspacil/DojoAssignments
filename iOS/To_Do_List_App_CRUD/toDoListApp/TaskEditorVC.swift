//
//  TaskEditorVC.swift
//  toDoListApp
//
//  Created by Lucas Spacil on 7/19/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class TaskEditorVC: UITableViewController {
    
    var delegate: FormViewController?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
