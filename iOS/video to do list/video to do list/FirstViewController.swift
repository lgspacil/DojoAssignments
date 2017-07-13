//
//  FirstViewController.swift
//  video to do list
//
//  Created by Lucas Spacil on 7/6/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

//making the list global so it can be accessed anywhere
var list = ["practice code", "go to the gym", "make dinner", "sleep 8 hours"]

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    @IBOutlet weak var myTableView: UITableView!
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        //the number of rows that we want in our list
        return (list.count)
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        //populate the cell
        cell.textLabel?.text = list[indexPath.row]
        
        return (cell)
    }
    
    
    //editing the task... the swiping technique
    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        
        if editingStyle == UITableViewCellEditingStyle.delete{
            list.remove(at: indexPath.row)
            myTableView.reloadData()
        }
        
    }
    


    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

