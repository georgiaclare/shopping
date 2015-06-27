//
//  UserNameViewController.swift
//  LTC Shopping List
//
//  Created by Georgia Clare Cooper-Stanbury on 27/03/2015.
//  Copyright (c) 2015 Georgia Clare Cooper-Stanbury. All rights reserved.
//

import UIKit

class UserNameViewController: UIViewController{
    var userName: String?
    @IBOutlet weak var UserNameField: UITextField!
    @IBAction func getUserName(sender: AnyObject) {
        //store the users name from the user name feild
        userName = UserNameField.text
    }
    //segue passes the information to the Shopping List View Controller
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Ordering" {
            var shoppingListVc = segue.destinationViewController as! ShoppingListViewController
            //setting the information to pass
            shoppingListVc.currentUser = userName!
        }
    }
}