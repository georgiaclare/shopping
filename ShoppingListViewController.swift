// My additions are just making the app work smoothly with getting the checkmark working and the reset button. I have attempet to implement multiple other extensions with little luck.

//
//  ShoppingListViewController.swift
//  LTC Shopping List
//
//  Created by Georgia Clare Cooper-Stanbury on 27/03/2015.
//  Copyright (c) 2015 Georgia Clare Cooper-Stanbury. All rights reserved.
//

import UIKit
//modifies the framework to inclue MFMail Compose controller delegate
import MessageUI

class ShoppingListViewController :UITableViewController, MFMailComposeViewControllerDelegate, UISearchBarDelegate, UISearchDisplayDelegate{
    //UISearchBarDelegate defines the behavior and response of a search, while UISearchDisplayDelegate defines the look and feel of the search bar.
    
    //setting the variables
    
    //accessing the users name from the UserNameViewController
    // ? means optional, doesn't HAVE to have a value
    var currentUser: String?
    //available items populates the arrays + creates the info you need
    var availableItems = ShoppingListItems()
    //filteres items was added as the variable where the newly selected list items are held
    //var filteredItems = [ShoppingListItems.item()]
    
    @IBAction func resetAllItems(sender: AnyObject) {
        //calling the reset items method
        availableItems.resetItemCount()
        //reloading the data
        self.tableView.reloadData()
        
        //Stackoverflow was the easy solution to getting my reset button working
        for i in 0...tableView.numberOfSections() - 1{
            for j in 0...tableView.numberOfRowsInSection(i) - 1 {
                if let cell = tableView.cellForRowAtIndexPath(NSIndexPath(forRow: j, inSection: i)){
                    cell.accessoryType = .None}
            }}
        
    }
    @IBAction func exportAllItems(sender: AnyObject) {
        //calling the method created in Shopping List items
        var emailBody = availableItems.itemToEmail()
        
        let mailSendingController = MFMailComposeViewController()
        mailSendingController.setSubject("\(currentUser!) - Shopping List Order")
        mailSendingController.setToRecipients(["georgia@cooperstanbury.com"]) //recipient email
        mailSendingController.setMessageBody(emailBody, isHTML: false)
        mailSendingController.mailComposeDelegate = self
        
        self.presentViewController(mailSendingController, animated: false, completion: nil)
    }
    
    //this makes it so the message screen will dissapear when your done
    func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult: MFMailComposeResult, error: NSError!) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    //deciding how many sections to make
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        //calls the getSections method to determine how many
        return availableItems.getSections()
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) ->Int {
        // This simply tells the tableView that it should contain as many rows as there are items in the array we populated earlier.
        
        return availableItems.getRowsInSection(section)
    }
    //displays the headings
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String {
        return availableItems.getSectionHeaders(section)
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //gets the cells identified with shopping list item
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomIngredients") as! CustomIngredientCell
        
        //gets the image from the array
        cell.itemImage.image = availableItems.getItemImage(indexPath.section, rowNumber: indexPath.row)
        //gets the title from the array
        cell.itemTitle.text = availableItems.getItemTitle(indexPath.section, rowNumber: indexPath.row)
        //gets the item quantity
        cell.itemQuantity.text = String(availableItems.getItemCount(indexPath.section, rowNumber: indexPath.row))
        //determining wether it is yes, selected or no, not
        cell.itemCheckMark.text = availableItems.getItemCount(indexPath.section, rowNumber: indexPath.row)>0 ? "Yes" : "No"
        //getting the item measurement from the array
        cell.itemMeasurement.text = availableItems.getItemMeasurements(indexPath.section, rowNumber: indexPath.row)
        
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        availableItems.updateItemCount(indexPath.section, rowNumber: indexPath.row)
        
        //reload data forces the veiw to update with the appropriate new info
        self.tableView.reloadData()
        
        //turns the checkmark on
        if let cell = tableView.cellForRowAtIndexPath(indexPath) {
            if cell.accessoryType == .None {
                cell.accessoryType = .Checkmark
            }
        }
        
        //ATtempta at search
        //        func filterContentForSearchText(searchText: String) {
        //            // Filter the array using the filter method
        //            self.filteredItems = self.item.filter({( item: ShoppingListItems) -> Bool in
        //                let categoryMatch = (scope == "All") || (item.category == scope)
        //                let stringMatch = item.title.rangeOfString(searchText)
        //                return categoryMatch && (stringMatch != nil)
        //            })
        //        }
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //the name entered in USer name view controller called here
        self.title = "\(currentUser!)'s Shopping List"
        
        var nib = UINib(nibName: "CustomIngredientCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "CustomIngredients")
    }
    
}
