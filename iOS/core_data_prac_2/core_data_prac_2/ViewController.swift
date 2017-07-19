//
//  ViewController.swift
//  core_data_prac_2
//
//  Created by Lucas Spacil on 7/12/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    //sets up a connection so we can talk to the Core Data
    let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    
    
    var userinfo = [Users]()
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func remove(_ sender: UIButton) {
        deleteCoreData()
    }
    
    @IBAction func submitButtonPressed(_ sender: Any) {
        
        //inserting new info to Core Data
        print(managedObjectContext)
        
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: managedObjectContext) as! Users
        
        
        newUser.setValue(username.text!, forKey: "username")
        newUser.setValue(password.text!, forKey: "password")
        
        userinfo.append(newUser)
        
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
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // you can write this line of code below or you can click and drag the UITABLEVIEW to the ViewController declaring that it is the dataSource. -> Where the table gets its information
        
//        tableView.dataSource = self
        
        fetchAllItems()
        print("the usernames are: \(userinfo)")
        print("------------------------")
        for item in userinfo{
            print(item.username!)
            print(item.password!)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //pulling info from DataCore
    func fetchAllItems(){
        
        let request = NSFetchRequest<NSFetchRequestResult>.init(entityName: "Users")
//        request.returnsObjectsAsFaults = false
        
        
        do
        {
            let results = try managedObjectContext.fetch(request)
            
            if results.count > 0{
                userinfo = results as! [Users]
            }
        }
        catch
        {
            print(error)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let path = segue.destination as! SelectedViewController
        path.delegate = self
        path.specialWords = userinfo
    }
    
    
    //deleting the first object
    func deleteCoreData(){
        print("deleting")
        print(userinfo[0])
        let thing = userinfo[0] as NSManagedObject
        managedObjectContext.delete(thing)
        tableView.reloadData()
    }
    
    
    
    
}


extension ViewController: UITableViewDataSource{
    
    //MAKING NEW CELLS IN THE TABLE VIEW
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userinfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath)
        
        cell.textLabel?.text = userinfo[indexPath.row].username
        
        cell.detailTextLabel?.text = userinfo[indexPath.row].password
        
        return cell
    }
    
}




