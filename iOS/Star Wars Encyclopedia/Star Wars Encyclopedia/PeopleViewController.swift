//
//  PeopleViewController.swift
//  Star Wars Encyclopedia
//
//  Created by Lucas Spacil on 7/17/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class PeopleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    // Hardcoded data for now
    var people = [String]()
    var starWarsResult = [NSDictionary]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        StarWarsModel.getAllPeople(completionHandler: {
            
            data, response, error in
            // data -> JSON data, response -> headers and other meta-information, error-> if one occurred
            
            do {
                // try converting the JSON object to "Foundation Types" (NSDictionary, NSArray, NSString, etc.)
                if let jsonResult = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as? NSDictionary {
                    
                    if let results = jsonResult["results"] as? NSArray{
//                        results is an array of objects
//                        print(results[2])
//                        adding the results array to a global variable as to pass it along
                        self.starWarsResult = results as! [NSDictionary]
                        
                        for person in results{
                            let personDict = person as! NSDictionary
                            self.people.append(personDict["name"]! as! String)
                        }}
                    print(self.people)
                }
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
                
            }
            catch
            {
                print(error)
            }
            
        })
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // if we return - sections we won't have any sections to put our rows in
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the count of people in our data array
        return people.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create a generic cell
        let cell = UITableViewCell()
        // set the default cell label to the corresponding element in the people array
        cell.textLabel?.text = people[indexPath.row]
        // return the cell so that it can be rendered
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        performSegue(withIdentifier: "showNamesDetail", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showNamesDetail" {
            let nav = segue.destination as! PeopleDetailViewController
            nav.delegate = self

            nav.info = starWarsResult[((sender as? NSIndexPath)?.row)!]
        }
    
        
    }

}

