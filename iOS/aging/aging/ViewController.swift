//
//  ViewController.swift
//  aging
//
//  Created by Lucas Spacil on 7/6/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let names = ["Lucas", "Molly", "Leo", "Marry", "Joseph", "Ryan", "Olivia", "Natalie", "Michelle", "Anthony", "Morgan", "Buffy", "Kaite", "Christian"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource{
    
    //to be a table view data source we have to specify how many rows are in the table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    //what to put in each cell?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        print (indexPath.row)
        cell.textLabel?.text = names[indexPath.row]
        
        let random_num = arc4random() % 90
        
        cell.detailTextLabel?.text = "\(random_num) years old"
        
        return cell
    }
}
