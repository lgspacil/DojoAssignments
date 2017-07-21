//
//  TaskEditorVC.swift
//  toDoListApp
//
//  Created by Lucas Spacil on 7/20/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class TaskEditorVC: UIViewController {
    
    @IBOutlet weak var editorText: UITextField!
    
    
    var delegate: FormViewController?
    
    var editCell: NSDictionary?
    


    @IBAction func submitButtonPressed(_ sender: Any) {
        
        print("pressed submit")
        
        TaskModel.updateTaskWithId(id: (editCell?["_id"] as? String)!, newTask: self.editorText.text!, completionHandler: {
            data, response, error in
            
            do {
                if let tasks = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as? NSDictionary {
                    print(tasks)
                    self.dismiss(animated: true, completion: nil)
                }
            }
            catch{
                print(error)
            }

        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(editCell!)
        editorText.text = editCell?["task"] as? String
    }


}
