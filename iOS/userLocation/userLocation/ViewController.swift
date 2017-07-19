//
//  ViewController.swift
//  userLocation
//
//  Created by Lucas Spacil on 7/13/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController, CLLocationManagerDelegate {

    //Map
    @IBOutlet weak var map: MKMapView!
    
    let manager = CLLocationManager()
    
    //this is called everytime the users location is updated
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //want the first location of our user
        let location = locations[0]
        
        //how much you are zoomed in
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        
        //can access altitude speed and etc
        let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        
        let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, span)
        
        map.setRegion(region, animated: true)
        
        //things you can extract
        print("the altitude is: : \(location.altitude)")
        print("location speed: \(location.speed)")

        
        self.map.showsUserLocation = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        
//        let url = URL(string : "https://maps.googleapis.com/maps/api/geocode/json?&address=san%20jose")
//        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
//            if error != nil{
//                print("Error")
//            }
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    


}

