//
//  AddItemTableViewControllerDelegate.swift
//  new_project
//
//  Created by Lucas Spacil on 7/11/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import Foundation
import UIKit

protocol AddItemTableViewControllerDelegate: class {
    func itemSaved(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?)
    func cancelButtonPressed(by controller: AddItemTableViewController)
}

