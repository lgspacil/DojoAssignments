//
//  TableViewController.swift
//  iosTest
//
//  Created by Lucas Spacil on 7/21/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit
import CoreData

class TableViewController: UITableViewController {
    
    var eventInfo = [Event]()
    
     let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    var events = [[], []]
    
    
    var sectionNames = ["Incomplete", "Completed"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchAllEvents()
        print("these are all the events I recieved: \(eventInfo)")
        
        
        
        for event in eventInfo{
            if event.completed == false{
                events[0].append(event.title ?? "")
            }
            else{
                events[1].append(event.title ?? "")
            }
        }
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventCell", for: indexPath)
        
        
        cell.textLabel?.text = events[indexPath.section][indexPath.row] as? String
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionNames[section]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sectionNames.count
    }
    
    //swipe to delete:
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        
        
        managedObjectContext.delete(eventInfo[indexPath.row])
        
        eventInfo.remove(at: indexPath.row)
        
        events[indexPath.section].remove(at: indexPath.row)
        
        do
        {
            try managedObjectContext.save()
        }
        catch
        {
            print(error)
        }
        
        tableView.reloadData()
    }
    
    //when cell is clicked the item should be moved to another cell
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        for event in eventInfo{
            if event.title == events[indexPath.section][indexPath.row] as? String{
                
                event.completed = true
                
                do {
                    try managedObjectContext.save()
                } catch {
                    print(error)
                }
            }
        }
    }
    
    //grabbing data from core data
    func fetchAllEvents(){
        
        let request = NSFetchRequest<NSFetchRequestResult>.init(entityName: "Event")
        
        
        do
        {
            let results = try managedObjectContext.fetch(request)
            
            if results.count > 0{
                eventInfo = results as! [Event]
            }
        }
        catch
        {
            print(error)
        }
    }
    
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        print("accessory button tapped")
        
        print(events[indexPath.section][indexPath.row])
        
        
        for event in eventInfo{
            if event.title == events[indexPath.section][indexPath.row] as? String{
                performSegue(withIdentifier: "editTask", sender: event)
                print(event)
            }
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "editTask"{
            let navigationController = segue.destination as! UINavigationController
            let dest = navigationController.topViewController as! ViewController
            dest.delegate = self
            
            dest.valuableData = sender as? Event
        }
        
        
    }



}
