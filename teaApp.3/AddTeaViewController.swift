//
//  AddTeaViewController.swift
//  teaApp.3
//
//  Created by john wang on 8/28/15.
//  Copyright © 2015 john wang. All rights reserved.
//

import UIKit

class AddTeaViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //all outlet elements
    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var newViewImageField: UIImageView!
    @IBOutlet weak var newTeaNameTextField: UITextField!
    @IBOutlet weak var newLocTextField: UITextField!
    @IBOutlet weak var newAmountTextField: UITextField!
 
    //new tea item that needs to send data to TeaListTableViewCell.swift
    
    var newTeaItem = Tea(name:"Tea2", com:true, image: "", loc:"Taiwang", amount:0, numbersOfNotes: 0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //UITextFieldDelegate setup
        initializeTextFields()
        
        
    }
    
    @IBAction func selectImageFromPhotoLibrary(sender: UITapGestureRecognizer) {
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        initializeTextFields()
        let imagePickerController = UIImagePickerController()
        
        // Only allow photos to be picked, not taken.
        imagePickerController.sourceType = .PhotoLibrary
        
        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self
        
        presentViewController(imagePickerController, animated: true, completion: nil)
    }

    
// MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        // Dismiss the picker if the user canceled.
        dismissViewControllerAnimated(true, completion: nil)
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        // The info dictionary contains multiple representations of the image, and this uses the original.
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        // Set photoImageView to display the selected image.
        newViewImageField.image = selectedImage
        //this code is not working
        let imageName = NSUUID().UUIDString
        //print("here X \(imageName)")
        self.newTeaItem.itemImage = imageName
        // Dismiss the picker.
        dismissViewControllerAnimated(true, completion: nil)
    }

    func initializeTextFields() {
        newTeaNameTextField.delegate = self
        newTeaNameTextField.keyboardType = UIKeyboardType.ASCIICapable
        
        newLocTextField.delegate = self
        newLocTextField.keyboardType = UIKeyboardType.ASCIICapable
        newAmountTextField.delegate = self
        newAmountTextField.keyboardType = UIKeyboardType.NumberPad
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //code required for UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        /*
        // Hide the keyboard.
        newTeaNameTextField.resignFirstResponder()
        newLocTextField.resignFirstResponder()
        newAmountTextField.resignFirstResponder()
        */
        return true
    }
    func textFieldDidEndEditing(textField: UITextField) {
    }
    
    @IBAction func userTappedBackground(sender: AnyObject) {
        view.endEditing(true)
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if(sender?.type == self.doneButton){
            return;
        }
        //retrieve data from the text field on the Table View Cell
        if(self.newTeaNameTextField != nil){
            self.newTeaItem.itemName = self.newTeaNameTextField.text!
        }
        if(self.newLocTextField != nil ){
            self.newTeaItem.itemLocation = self.newLocTextField.text!

        }
        if(self.newAmountTextField != nil){
            let convertAmount = self.newAmountTextField.text!
            if(convertAmount != ""){
                self.newTeaItem.itemAmount = Int(convertAmount)!
            }
        }
        if(self.newViewImageField != nil){
            //self.newTeaItem.itemImage = self.newViewImageField.image.
        }
        
        
    }

    


}
