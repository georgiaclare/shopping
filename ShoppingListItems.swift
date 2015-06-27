//
//  ShoppingListItems.swift
//  LTC Shopping List
//
//  Created by Georgia Clare Cooper-Stanbury on 27/03/2015.
//  Copyright (c) 2015 Georgia Clare Cooper-Stanbury. All rights reserved.
//

import UIKit
class ShoppingListItems: NSObject{
    //struct "structures" the code, we are defining an item that contains variables
    struct item {
        //name
        var title = ""
        //a count that increases when an item is selected
        var itemCount = 0
        //changed the ordering quantity
        var increment = 50
        //changes the ordering measurement
        var measurement = "Grams"
        //sets the item image
        var itemImage = UIImage()
        
    }
    
    override init() {
        super.init()
        //when the app is run the array is populated and available to the view controllers
        populateDataWithItems()
    }
    
    //two dimentional array in order to display the items in the table view
    var itemsList = Array<Array<item>>()
    
    func getItemMeasurements(var sectionNumber: Int, var rowNumber: Int) -> String {
        return itemsList[sectionNumber][rowNumber].measurement
    }
    
    func populateDataWithItems() {
        //initializing arrays
        
        //butter items
        var butterArray = Array<item>()
        var butterItem = item()
        
        
        butterItem.title = "Butter (g)"
        butterItem.itemCount = 0
        butterItem.itemImage = UIImage(named: "butButter")!
        butterArray = [butterItem]
        
        butterItem.title = "Ghee"
        butterItem.itemCount = 0
        butterItem.itemImage = UIImage(named: "butGhee")!
        butterArray += [butterItem]
        
        butterItem.title = "Salt reduced"
        butterItem.itemCount = 0
        butterItem.itemImage = UIImage(named: "butButter")!
        butterArray += [butterItem]
        
        butterItem.title = "Margarine"
        butterItem.itemCount = 0
        butterItem.itemImage = UIImage(named: "butMargarine")!
        butterArray += [butterItem]
        
        
        //cheese items
        var cheeseArray = Array<item>()
        var cheeseItem = item()
        
        
        cheeseItem.title = "Blue"
        cheeseItem.itemCount = 0
        cheeseItem.itemImage = UIImage(named: "chsBlue")!
        cheeseArray += [cheeseItem]
        
        cheeseItem.title = "Bocconcini"
        cheeseItem.itemCount = 0
        cheeseItem.itemImage = UIImage(named: "chsBocconcini")!
        cheeseArray += [cheeseItem]
        
        cheeseItem.title = "Brie"
        cheeseItem.itemCount = 0
        cheeseItem.itemImage = UIImage(named: "chsBrie")!
        cheeseArray += [cheeseItem]
        
        cheeseItem.title = "Camembert"
        cheeseItem.itemCount = 0
        cheeseItem.itemImage = UIImage(named: "chsCamembert")!
        cheeseArray += [cheeseItem]
        
        cheeseItem.title = "Cheddar"
        cheeseItem.itemCount = 0
        cheeseItem.itemImage = UIImage(named: "chsCheddar")!
        cheeseArray += [cheeseItem]
        
        cheeseItem.title = "Edam"
        cheeseItem.itemCount = 0
        cheeseItem.itemImage = UIImage(named: "chsEdam")!
        cheeseArray += [cheeseItem]
        
        cheeseItem.title = "Fetta"
        cheeseItem.itemCount = 0
        cheeseItem.itemImage = UIImage(named: "chsFeta")!
        cheeseArray += [cheeseItem]
        
        cheeseItem.title = "Fruche/Strawb"
        cheeseItem.itemCount = 0
        cheeseItem.itemImage = UIImage(named: "chsFruche")!
        cheeseArray += [cheeseItem]
        
        cheeseItem.title = "Gouda"
        cheeseItem.itemCount = 0
        cheeseItem.itemImage = UIImage(named: "chsGouda")!
        cheeseArray += [cheeseItem]
        
        cheeseItem.title = "Greuyer"
        cheeseItem.itemCount = 0
        //default image, no image for item
        cheeseItem.itemImage = UIImage(named: "default")!
        cheeseArray += [cheeseItem]
        
        cheeseItem.title = "Mascarpone"
        cheeseItem.itemCount = 0
        cheeseItem.itemImage = UIImage(named: "chsMascarpone")!
        cheeseArray += [cheeseItem]
        
        cheeseItem.title = "Mozzarella"
        cheeseItem.itemCount = 0
        cheeseItem.itemImage = UIImage(named: "chsMozzarella")!
        cheeseArray += [cheeseItem]
        
        cheeseItem.title = "Parmesean"
        cheeseItem.itemCount = 0
        cheeseItem.itemImage = UIImage(named: "chsParmesan")!
        cheeseArray += [cheeseItem]
        
        cheeseItem.title = "Piladelphia"
        cheeseItem.itemCount = 0
        cheeseItem.itemImage = UIImage(named: "chsPhilipelphia")!
        cheeseArray += [cheeseItem]
        
        cheeseItem.title = "Ricotta (g)"
        cheeseItem.itemCount = 0
        cheeseItem.itemImage = UIImage(named: "chsRicotta")!
        cheeseArray += [cheeseItem]
        
        cheeseItem.title = "Tasty shredded"
        cheeseItem.itemCount = 0
        cheeseItem.itemImage = UIImage(named: "chsTasty")!
        cheeseArray += [cheeseItem]
        
        cheeseItem.title = "Tofu Firm"
        cheeseItem.itemCount = 0
        cheeseItem.itemImage = UIImage(named: "chsTofu")!
        cheeseArray += [cheeseItem]
        
        //milk items
        var milkArray = Array<item>()
        var milkItem = item()
        
        milkItem.title = "Milk (mL)"
        milkItem.itemCount = 0
        milkItem.itemImage = UIImage(named: "mlkLowFat")!
        milkItem.increment = 1
        milkItem.measurement = "Cup"
        milkArray += [milkItem]
        
        milkItem.title = "Milk Low Fat (mL)"
        milkItem.itemCount = 0
        milkItem.itemImage = UIImage(named: "mlkNormal")!
        milkItem.increment = 1
        milkItem.measurement = "Cup"
        milkArray += [milkItem]
        
        
        //egg items
        var eggArray = Array<item>()
        var eggItem = item()
        
        eggItem.title = "Eggs RSPCA"
        eggItem.itemCount = 0
        eggItem.increment = 1
        //jpegeggSingle
        eggItem.itemImage = UIImage(named: "default")!
        eggItem.measurement = "Individual"
        eggArray += [eggItem]
        
        //cream items
        var creamArray = Array<item>()
        var creamItem = item()
        
        creamItem.title = "Light cream (ml)"
        creamItem.itemCount = 0
        //jpegcrmLite
        creamItem.itemImage = UIImage(named: "default")!
        creamArray += [creamItem]
        
        creamItem.title = "Sour cream (ml)"
        creamItem.itemCount = 0
        //jpegcrmSour
        creamItem.itemImage = UIImage(named: "default")!
        creamArray += [creamItem]
        
        creamItem.title = "Thick cream (ml)"
        creamItem.itemCount = 0
        //jpegcrmThick
        creamItem.itemImage = UIImage(named: "default")!
        creamArray += [creamItem]
        
        creamItem.title = "Cooking cream (ml)"
        creamItem.itemCount = 0
        //jpegcrmCooking
        creamItem.itemImage = UIImage(named: "default")!
        creamArray += [creamItem]
        
        creamItem.title = "Greek Yoghurt"
        creamItem.itemCount = 0
        //jpegcrmGreek
        creamItem.itemImage = UIImage(named: "default")!
        creamArray += [creamItem]
        
        
        //frozen items
        var frozenArray = Array<item>()
        var frozenItem = item()
        
        frozenItem.title = "Philo (sheets)"
        frozenItem.itemCount = 0
        frozenItem.itemImage = UIImage(named: "frzPastrySheets")!
        frozenArray += [frozenItem]
        
        frozenItem.title = "Puff pastry"
        frozenItem.itemCount = 0
        //default
        frozenItem.itemImage = UIImage(named: "default")!
        frozenArray += [frozenItem]
        
        frozenItem.title = "Shortcrust"
        frozenItem.itemCount = 0
        //default
        frozenItem.itemImage = UIImage(named: "default")!
        frozenArray += [frozenItem]
        
        frozenItem.title = "Spring roll wrappers"
        frozenItem.itemCount = 0
        //default
        frozenItem.itemImage = UIImage(named: "default")!
        frozenArray += [frozenItem]
        
        
        itemsList = [butterArray, cheeseArray, milkArray, eggArray, creamArray, frozenArray]
    }
    
    func getSections() -> Int {
        //making it so when I add to the array I will not have to update the section amount
        return itemsList.count
    }
    
    func getSectionHeaders(var sectionNumber: Int) -> String{
        switch sectionNumber{
            //created so when the veiew controller sends a number, it outputs a string
        case 0: return "Butter"
        case 1: return "Cheese"
        case 2: return "Milk"
        case 3: return "Eggs"
        case 4: return "Cream"
        case 5: return "Frozen"
            
        default: return "Error"
        }
    }
    //returns the number of rows in each category array
    func getRowsInSection(var  currentSection: Int) -> Int {
        return itemsList[currentSection].count
    }
    //for the veiw controller to know what to display
    func getItemTitle(var sectionNumber: Int, var rowNumber: Int) -> String {
        return itemsList[sectionNumber][rowNumber].title
    }
    //for the veiw controller to know what to display
    func getItemCount(var sectionNumber: Int, var rowNumber: Int) -> Int {
        return itemsList[sectionNumber][rowNumber].itemCount
    }
    //for the veiw controller to know what to display
    func getItemImage(var sectionNumber: Int, var rowNumber: Int) -> UIImage {
        return itemsList[sectionNumber][rowNumber].itemImage
    }
    
    //increasing the quantity when the cell is tapped (selected)
    func updateItemCount(var sectionNumber: Int, var rowNumber: Int){
        itemsList[sectionNumber][rowNumber].itemCount += itemsList[sectionNumber][rowNumber].increment
    }
    
    //setting the elements in the array to 0
    func resetItemCount() {
        for var sectionNumber = 0; sectionNumber < itemsList.count; sectionNumber++ {
            for var rowNumber = 0; rowNumber < itemsList[sectionNumber].count; rowNumber++ {
                itemsList[sectionNumber][rowNumber].itemCount = 0
            }
        }
    }
    
    //returning the text for the body of the email
    func itemToEmail() -> String {
        var emailBody: String = ""
        
        for var sectionNumber = 0; sectionNumber < itemsList.count; sectionNumber++ {
            for var rowNumber = 0; rowNumber < itemsList[sectionNumber].count; rowNumber++ {
                if itemsList[sectionNumber][rowNumber].itemCount != 0 {
                    emailBody += "\(itemsList[sectionNumber][rowNumber].title) - \(itemsList[sectionNumber][rowNumber].itemCount)\n"
                }
            }
            
        }
        return emailBody;
    }
    
    
}