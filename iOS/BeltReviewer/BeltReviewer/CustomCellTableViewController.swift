//
//  CustomCellTableViewController.swift
//  BeltReviewer
//
//  Created by Lucas Spacil on 7/20/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class CustomCellTableViewController: UITableViewController {

    var heros = ["Batman", "Mario", "Katniss Everdeen", "Thor", "Maggie Simpson"]
    
    var subClassStuff = ["", "", "", "", ""]
    
    var nemesis = ["Catwoman", "Luigi", "President Snow", "His Brother", "Unibrow Baby"]
    
    var worlds = ["Gotham City", "Super Mario World", "Hunger Games", "Simpson World"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heros.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "superHeros") as! CustomCell
        
        cell.superHero.text = heros[indexPath.row]
        cell.subClass.text = subClassStuff[indexPath.row]
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let world = UITableViewRowAction(style: .destructive, title: "World") { (action, indexPath) in
            
            let worldy = self.worlds[indexPath.row]
            
            self.subClassStuff.remove(at: indexPath.row)
            self.subClassStuff.insert(worldy, at: indexPath.row)
            tableView.reloadData()
            
        }
        
        let nemesis = UITableViewRowAction(style: .normal, title: "Nemesis") { (action, indexPath) in
            
            let nemi = self.nemesis[indexPath.row]
            
            self.subClassStuff.remove(at: indexPath.row)
            self.subClassStuff.insert(nemi, at: indexPath.row)
            tableView.reloadData()
        }
        
        nemesis.backgroundColor = UIColor.blue
        
        return [world, nemesis]
    }
    
    
    
    



}
