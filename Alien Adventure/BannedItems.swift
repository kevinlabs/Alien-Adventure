//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
//  Udacity Editor - Student Signature.
//  Code Signature.
//  3960c466b6e28ebeeaf7d8bbfb464ecf

import Foundation

extension Hero {
    
    //I didn't know you can input .Plist file into function like this?
    func bannedItems(dataFile: String) -> [Int] {
        
        print("-----BannedItems Log start indicator-----")
        
        //--Variables----
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")!
        let itemArray = NSArray(contentsOfURL: dataFileURL) as! [[String:AnyObject]]
        
        //        struct ItemList {
        //            let name: String
        //            var carbonAge: Int
        //            var itemID: Int
        //        }
        
        //        var itemStructs = [ItemList]()
        var intArray = [Int]()
        
        
        //----------------
        
        print("Pring array count \(itemArray.count)")
        
        //Get the values from the file!!
        for item in itemArray {
            
            if let itemID = item["ItemID"] as? Int {
                print("printing ItemID \(itemID)")
                
                if let name = item["Name"] as? String where name.lowercaseString.containsString("laser") {
                    print("printing Name \(name)")
                    
                    if let historicalData = item["HistoricalData"] as? [String:AnyObject] {
                        print("printing Historical Data \(historicalData)")
                        if let carbonAge = historicalData["CarbonAge"] as? Int where carbonAge < 30 {
                            print("Printing CarbonAge \(carbonAge)")
                            intArray.append(itemID)
                            print("printing Int Array \(intArray)")
                        }
                    }
                    
                }
                
            }
            
            
        }
        
        
        
        return [Int](intArray)
    }
}


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"



// Self notes.-----------------

// Look through the list and tell items that mentions a "laser" and are less than 30 carbon years old.
//


// --Return an array containing the ItemID values for any banned item.







//Code Signature.
//3960c466b6e28ebeeaf7d8bbfb464ecf

