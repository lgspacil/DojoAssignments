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
    

    
//    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
//        let delete = UITableViewRowAction(style: .destructive, title: "Delete") { (action, indexPath) in
//            // delete item at indexPath
//        }
//        
//        let share = UITableViewRowAction(style: .normal, title: "Disable") { (action, indexPath) in
//            // share item at indexPath
//            print("DISS: ", indexPath.row)
//        }
//        
//        share.backgroundColor = UIColor.blue
//        
//        return [delete, share]
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "editCoreData"{
            let path = segue.destination as! CoreDataEditVC
            path.delegate = self
            path.cellInfo = sender as? Task
        } 
        
    }
    
    //when accessory button is pressed
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        print("accessory button tapped")
        
        performSegue(withIdentifier: "editCoreData", sender: taskInfo[indexPath.row])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    
    

}


