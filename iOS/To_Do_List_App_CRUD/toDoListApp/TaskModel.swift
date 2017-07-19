//
//  TaskModel.swift
//  toDoListApp
//
//  Created by Lucas Spacil on 7/18/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import Foundation
class TaskModel {
    static func getAllTasks(completionHandler: @escaping(_ data: Data?, _ response: URLResponse?, _ error: Error?) -> Void) {
        let url = URL(string: "http://localhost:8000/tasks")
        let session = URLSession.shared
        let task = session.dataTask(with: url!, completionHandler: completionHandler)
        task.resume()
    }
    
    static func addTaskWithObjective(objective: String, completionHandler: @escaping(_ data: Data?, _ response: URLResponse?, _ error: Error?) -> Void) {
        // Create the url to request
        if let urlToReq = URL(string: "http://localhost:8000/result") {
            // Create an NSMutableURLRequest using the url. This Mutable Request will allow us to modify the headers.
            var request = URLRequest(url: urlToReq)
            // Set the method to POST
            request.httpMethod = "POST"
            // Create some bodyData and attach it to the HTTPBody
            let bodyData = "task=\(objective)"
            request.httpBody = bodyData.data(using: .utf8)
            // Create the session
            let session = URLSession.shared
            let task = session.dataTask(with: request as URLRequest, completionHandler: completionHandler)
            task.resume()
        }
    }
    
    
    static func deleteTaskWithId(id: String, completionHandler: @escaping(_ data: Data?, _ response: URLResponse?, _ error: Error?) -> Void){
        
        if let urlToReq = URL(string: "http://localhost:8000/remove"){
            
            var request = URLRequest(url: urlToReq)
            
            request.httpMethod = "POST"
            
            let bodyData = "id=\(id)"
            
            request.httpBody = bodyData.data(using: .utf8)
            
            let session = URLSession.shared
            let task = session.dataTask(with: request as URLRequest, completionHandler: completionHandler)
            task.resume()
            
        }
    }
    
    static func updateTaskWithId(id: String, newTask: String, completionHandler: @escaping(_ data: Data?, _ response: URLResponse?, _ error: Error?) -> Void){
        
        if let urlToReq = URL(string: "http://localhost:8000/update"){
            
            var request = URLRequest(url: urlToReq)
            
            request.httpMethod = "POST"
            
            let bodyData = "id=\(id)&task=\(newTask)"
            
            request.httpBody = bodyData.data(using: .utf8)
            
            let session = URLSession.shared
            let task = session.dataTask(with: request as URLRequest, completionHandler: completionHandler)
            task.resume()
            
        }
    }
}
