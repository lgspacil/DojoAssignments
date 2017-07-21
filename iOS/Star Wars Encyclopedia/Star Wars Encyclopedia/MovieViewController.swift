//
//  MovieViewController.swift
//  Star Wars Encyclopedia
//
//  Created by Lucas Spacil on 7/17/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    
    // Hardcoded data for now
    var films = [String]()
    var starWarsInfo = [NSDictionary]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FilmsStarStarWarsModel.getAllFilms(completionHandler: {
            
            data, response, error in
            // data -> JSON data, response -> headers and other meta-information, error-> if one occurred
            
            do {
                // try converting the JSON object to "Foundation Types" (NSDictionary, NSArray, NSString, etc.)
                if let jsonResult = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as? NSDictionary {
                    
                    
                    if let result = jsonResult["results"] as? NSArray{
                        
                        self.starWarsInfo = result as! [NSDictionary]
                        
                        for film in result{
                            let filmDict = film as! NSDictionary
                            self.films.append(filmDict["title"]! as! String)
                        }}
                    
                }
                
                print(self.films)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            } catch {
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
        return films.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create a generic cell
        let cell = UITableViewCell()
        // set the default cell label to the corresponding element in the people array
        cell.textLabel?.text = films[indexPath.row]
        // return the cell so that it can be rendered
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "showFilmsDetail", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showFilmsDetail"{
            let nav = segue.destination as! MovieDetailsViewController
            nav.delegate = self
            
            nav.info = starWarsInfo[((sender as? NSIndexPath)?.row)!]
        
        }
    
    }
    

    

}
