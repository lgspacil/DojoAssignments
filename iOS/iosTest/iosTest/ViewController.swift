//
//  ViewController.swift
//  iosTest
//
//  Created by Lucas Spacil on 7/21/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
     let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var eventInfo = [Event]()
    
    var delegate: TableViewController?
    
    var valuableData: Event?
    
    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var infoText: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var completed = false
    var time: String = ""

    
    @IBAction func datePickerStopped(_ sender: Any) {
        
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short

        time = formatter.string(from: (sender as AnyObject).date)
        
        print("the time is: \(time)")
    }
    
    
    
    @IBAction func saveButton(_ sender: UIButton) {
        print("save button pressed")
        
        let newEvent = NSEntityDescription.insertNewObject(forEntityName: "Event", into: managedObjectContext) as! Event
        
        newEvent.setValue(titleText.text!, forKey: "title")
        newEvent.setValue(datePicker.date, forKey: "time")
        newEvent.setValue(infoText.text!, forKey: "info")
        newEvent.setValue(completed, forKey: "completed")
        
        eventInfo.append(newEvent)
        
        do
        {
            try managedObjectContext.save()
        }
        catch
        {
            print(error)
        }

    }
    
    
    @IBOutlet weak var cancelButtonPressed: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("=================")
        print(valuableData ?? "")
        
        
        
        titleText.text = valuableData?.title
        infoText.text = valuableData?.info
    }


}

