//
//  AddItemTableViewControllerDelegate.swift
//  bucket
//
//  Created by Lucas Spacil on 7/10/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import Foundation


protocol AddItemTableViewControllerDelegate {
    func itemSaved(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?)
    func cancelButtonPressed(by controller: AddItemTableViewController)
    
    
}
