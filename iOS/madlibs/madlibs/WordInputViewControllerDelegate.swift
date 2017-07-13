//
//  WordInputViewControllerDelegate.swift
//  madlibs
//
//  Created by Lucas Spacil on 7/12/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//

import Foundation


protocol WordInputViewControllerDelegate: class {
    func wordSubitted(by controller: WordInputViewController, with dict: Dictionary<String, String>)
}



