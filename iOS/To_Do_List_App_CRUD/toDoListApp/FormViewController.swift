//
//  FormViewController.swift
//  toDoListApp
//
//  Created by Lucas Spacil on 7/18/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {
    
    var backEnd = [NSDictionary]()
    
    var indexPath: IndexPath?
    
    @IBOutlet weak var newTaskBox: UITextField!
    
    @IBAction func addButtonClicked(_ sender: UIButton) {
        
        print("Clicked me")
        
        TaskModel.addTaskWithObjective(objective: newTaskBox.text!, completionHandler: {
            data, response, error in
            
            print("inside add task")
            do {
                if let tasks = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as? [NSDictionary] {
                    print(tasks)
                    self.backEnd = tasks
                    DispatchQueue.main.sync {
                        self.tableView.reloadData()
                    }
                }
            } catch {
                print("Something went wrong")
            }
        })
    }
    
    
    var delegate: ViewController?

    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TaskModel.getAllTasks() {
            data, response, error in
            do {
                if let tasks = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as? [NSDictionary] {
                    print("something should print!")
                    self.backEnd = tasks
                    DispatchQueue.main.sync {
                        self.tableView.reloadData()
                    }
                    
                }
                
            } catch {
                print("Something went wrong")
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "editTask"{
            let des = segue.destination as! TaskEditorVC
            des.delegate = self
            des.editCell = sender as? NSDictionary
        }
    }
    
    
}


extension FormViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return backEnd.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoCell")
        
        cell?.textLabel?.text = backEnd[indexPath.row]["task"] as? String
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.indexPath = indexPath
        print("selected this row \(indexPath.row)")
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        TaskModel.deleteTaskWithId(id: backEnd[indexPath.row]["_id"] as! String, completionHandler: {
            data, response, error in
            
            print("in the delete Function")
            
        })
        backEnd.remove(at: indexPath.row)
        tableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        print("accessory button tapped")
        
        performSegue(withIdentifier: "editTask", sender: backEnd[indexPath.row])
    }
    
  


}
