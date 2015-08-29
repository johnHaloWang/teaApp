//
//  ToDoItem.swift
//  teaApp.3
//
//  Created by john wang on 8/28/15.
//  Copyright © 2015 john wang. All rights reserved.
//

import Foundation
import UIKit

class ToDoItem: NSObject{
    
    var itemName: String
    var completed: Bool
    //var creationDate: NSDate
    
    init(name: String, com: Bool){
        self.itemName = name
        self.completed = com
    }
    
    func markAsCompleted(isCompleted: Bool){
        self.completed = isCompleted
    }
    
    /*
    func onDate(date: NSDate){
    creationDate = date
    }
    */
    
    
}