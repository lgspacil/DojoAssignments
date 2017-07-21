//
//  CoreDataEditVC.swift
//  toDoListApp
//
//  Created by Lucas Spacil on 7/20/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class CoreDataEditVC: UIViewController {
    
    let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var delegate: CustomCellTableViewController?
    
    var cellInfo: Task?
    
    @IBOutlet weak var textInfo: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("the cell info: \(String(describing: self.cellInfo))")
        textInfo.text = self.cellInfo?.descriptiontext
    }
    
    
    
    @IBAction func updateButtonPressed(_ sender: UIButton) {
        
        let thisTask = self.cellInfo
        thisTask?.descriptiontext = textInfo.text
        
        do{
            try managedObjectContext.save()
        }
        catch{
            print(error)
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
