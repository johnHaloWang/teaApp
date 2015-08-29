//
//  Tea.swift
//  teaApp.3
//
//  Created by john wang on 8/28/15.
//  Copyright © 2015 john wang. All rights reserved.
//

import Foundation
import UIKit
class Tea: NSObject{
    var itemName: String
    var completed: Bool
    var itemImage: UIImage?
    var itemLocation: String
    var itemAmount: Int
    var itemNumberOfNotes: Int
    
    init(name: String, com: Bool, image: UIImage?, loc: String, amount: Int = 0, numbersOfNotes: Int = 0){
        self.itemName = name
        self.completed = com
        self.itemImage = image
        self.itemLocation = loc
        self.itemAmount = amount
        self.itemNumberOfNotes = numbersOfNotes
              
    }
    func markAsCompleted(isCompleted: Bool){
        self.completed = isCompleted
    }
    
}