//
//  MovieDetailsViewController.swift
//  Star Wars Encyclopedia
//
//  Created by Lucas Spacil on 7/18/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    
    var delegate: MovieViewController?
    
    var info: NSDictionary?
    
    
    @IBOutlet weak var titleMovie: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
    @IBOutlet weak var director: UILabel!
    @IBOutlet weak var openingCrawl: UILabel!
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        print(info!["director"] as? String! ?? "")
        
        titleMovie.text = info!["title"] as? String! ?? ""
        releaseDate.text = info!["release_date"] as? String! ?? ""
        director.text = info!["director"] as? String! ?? ""
        openingCrawl.text = info!["opening_crawl"] as? String! ?? ""
        
        
        
        
        // Do any additional setup after loading the view.
    }

  

}
