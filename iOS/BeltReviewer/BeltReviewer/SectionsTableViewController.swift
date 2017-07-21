//
//  SectionsTableViewController.swift
//  BeltReviewer
//
//  Created by Lucas Spacil on 7/20/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class SectionsTableViewController: UITableViewController {
    
    var names = [["Lucas", "Monika", "Martha", "Miro"], ["Gaglianone", "Spacil", "Alar", "Lol"]]
    
    
    var sectionNames = ["first Name", "Last Name"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteQuote", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.section][indexPath.row]
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionNames[section]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sectionNames.count
    }
    
    
}
