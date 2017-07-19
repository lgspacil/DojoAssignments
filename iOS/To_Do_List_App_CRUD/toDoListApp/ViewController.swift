//
//  ViewController.swift
//  toDoListApp
//
//  Created by Lucas Spacil on 7/16/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
     let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var taskInfo = [Task]()
//    var backEnd = [NSDictionary]()

    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var descriptionText: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var completed = false
    

    @IBAction func addItemButtonPressed(_ sender: Any) {
        print("button pressed")

        
        let newTask = NSEntityDescription.insertNewObject(forEntityName: "Task", into: managedObjectContext) as! Task
        
        newTask.setValue(titleText.text!, forKey: "title")
        newTask.setValue(datePicker.date, forKey: "date")
        newTask.setValue(descriptionText.text!, forKey: "descriptiontext")
        newTask.setValue(completed, forKey: "completed")
        
        taskInfo.append(newTask)
        
        do
        {
            try managedObjectContext.save()
        }
        catch
        {
            print(error)
        }
        
//        print("the number of tasks are: \(taskInfo.count)")
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToForm"{
            let path = segue.destination as! FormViewController
            path.delegate = self
        }
    
    }
    
    



}

