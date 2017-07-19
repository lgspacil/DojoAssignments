//
//  CustomCellTableViewController.swift
//  toDoListApp
//
//  Created by Lucas Spacil on 7/16/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit
import CoreData

class CustomCellTableViewController: UITableViewController {
    
    let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    var delegate: ViewController?
    var taskInfo: [Task]!

    override func viewDidLoad() {
        fetchAllItems()
        super.viewDidLoad()
        print("The task I received is: \(taskInfo!)")
    }

    //grabbing data from core data
    func fetchAllItems(){
        
        let request = NSFetchRequest<NSFetchRequestResult>.init(entityName: "Task")
        //        request.returnsObjectsAsFaults = false
        
        
        do
        {
            let results = try managedObjectContext.fetch(request)
            
            if results.count > 0{
                taskInfo = results as! [Task]
            }
        }
        catch
        {
            print(error)
        }
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        
        cell.title.text = taskInfo[indexPath.row].title
        cell.date.text = String(describing: taskInfo[indexPath.row].date!)
        cell.descriptionText.text = taskInfo[indexPath.row].descriptiontext
        
        if taskInfo[indexPath.row].completed == true{
            cell.backgroundColor = UIColor.green
        }
        
        // return cell so that Table View knows what to draw in each row
        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskInfo.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let thisTask = self.taskInfo[indexPath.row]
        thisTask.completed = true
        
        
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

    //swipe to delete:
   override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    
    
    
    managedObjectContext.delete(taskInfo[indexPath.row])
    
    taskInfo.remove(at: indexPath.row)
    
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
    
    

}


