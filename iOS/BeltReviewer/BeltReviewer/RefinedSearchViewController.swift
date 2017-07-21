//
//  RefinedSearchViewController.swift
//  BeltReviewer
//
//  Created by Lucas Spacil on 7/20/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class RefinedSearchViewController: UIViewController {
    
    var animals = ["dog", "cat", "whale", "snake", "turtle", "seal", "pelican"]
    var reptiles = ["snake", "turtle", "pelican"]
    var mammals = ["dog", "cat", "whale", "seal"]
    
    var currentDisplay = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func showAllAnimalsButtonPressed(_ sender: Any) {
        self.currentDisplay = self.animals
        tableView.reloadData()
    }
    
    @IBAction func showAllReptilesButtonPressed(_ sender: UIButton) {
        self.currentDisplay = self.reptiles
        tableView.reloadData()
    }
    
    @IBAction func showOnlyMammalsButtonPressed(_ sender: Any) {
        self.currentDisplay = self.mammals
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}

extension RefinedSearchViewController: UITableViewDataSource, UITableViewDelegate{
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentDisplay.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell")
        
        cell?.textLabel?.text = currentDisplay[indexPath.row]
        return cell!
    }
    
}



