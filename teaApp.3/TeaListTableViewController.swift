//
//  TeaListTableViewController.swift
//  teaApp.3
//
//  Created by john wang on 8/28/15.
//  Copyright © 2015 john wang. All rights reserved.
//

import UIKit

class TeaListTableViewController: UITableViewController {
    //name: String, com: Bool, image: String, loc: String, amount: Int = 0, numbersOfNotes: Int = 0
 
    
    
    
    var teaItems = [Tea]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        loadTeas()
    }
    
    func loadTeas(){
        
        let tea1 = Tea(name:"Tea1", com:true, image: "1.jpg", loc:"China", amount:2, numbersOfNotes: 0)
        //let photo2 = "defaultPhoto.png"
        //print(photo1)
        let tea2 = Tea(name:"Tea2", com:true, image: "2.jpg", loc:"Taiwang", amount:50, numbersOfNotes: 0)
        teaItems += [tea1, tea2]
    }
    
    @IBAction func cancelToDoListTableViewController(segue: UIStoryboardSegue){
        
        
    }
    @IBAction func saveToDoListTableViewController(segue: UIStoryboardSegue){
        
        if let source = segue.sourceViewController as? AddTeaViewController{
            self.teaItems.append(source.newTeaItem)
            self.tableView.reloadData()
        }
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.teaItems.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Configure the cell...
        let cell = tableView.dequeueReusableCellWithIdentifier("ListPrototypeCell", forIndexPath: indexPath) as! TeaListTableViewCell
        let teaItem = teaItems[indexPath.row] as Tea
        //the image is not displaying ... new bugs on 8-29-2015 helps ... need to sleep
        
         let image = UIImage(named: teaItem.itemImage)
        print(image)
        cell.imageViewField.image = image
        cell.teaNameLabelField.text = teaItem.itemName
        cell.teaLocLabelField.text = teaItem.itemLocation
        cell.teaAmountLabelField.text = "\(teaItem.itemAmount)g left"
        cell.teaNumberOfNotesLabelField.text = "\(teaItem.itemNumberOfNotes) testing note"
        
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
