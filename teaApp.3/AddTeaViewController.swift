//
//  AddTeaViewController.swift
//  teaApp.3
//
//  Created by john wang on 8/28/15.
//  Copyright © 2015 john wang. All rights reserved.
//

import UIKit

class AddTeaViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    @IBOutlet weak var newViewImageField: UIImageView!
    
    @IBOutlet weak var newTeaNameTextField: UITextField!
    
    @IBOutlet weak var newLocTextField: UITextField!
    @IBOutlet weak var newAmountTextField: UITextField!
    
    var newTeaItem = Tea(name:"Tea2", com:true, image: UIImage(named: "defaultPhoto.png"), loc:"Taiwang", amount:50, numbersOfNotes: 0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        newTeaNameTextField.delegate = self
        newLocTextField.delegate = self
        newAmountTextField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        newTeaNameTextField.resignFirstResponder()
        newLocTextField.resignFirstResponder()
        newAmountTextField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(textField: UITextField) {
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if(sender?.type == self.doneButton){
            return;
        }
        if(self.newTeaNameTextField != nil){
            self.newTeaItem.itemName = self.newTeaNameTextField.text!
        }
        if(self.newLocTextField != nil){
            self.newTeaItem.itemLocation = self.newLocTextField.text!
        }
        if(self.newAmountTextField != nil){
            let convertAmount = self.newAmountTextField.text!
            self.newTeaItem.itemAmount = Int(convertAmount)!
        }
        
        
    }
    


}
