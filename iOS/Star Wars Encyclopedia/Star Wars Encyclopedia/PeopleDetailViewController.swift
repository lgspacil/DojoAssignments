//
//  PeopleDetailViewController.swift
//  Star Wars Encyclopedia
//
//  Created by Lucas Spacil on 7/17/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class PeopleDetailViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var Gender: UILabel!
    @IBOutlet weak var BirthYear: UILabel!
    @IBOutlet weak var Mass: UILabel!
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var delegate: PeopleViewController?
    
    var info  : NSDictionary?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        print(self.info[self.number!]["birth_year"] as? String! ?? "")
        print(info!["name"] as? String! ?? "")
        
        name.text = info!["name"] as? String! ?? ""
        Gender.text = info!["gender"] as? String! ?? ""
        BirthYear.text = info!["birth_year"] as? String! ?? ""
        Mass.text = info!["mass"] as? String! ?? ""
        

        
        
    }

   
    
    
    

}
