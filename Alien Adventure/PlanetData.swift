//
//  PlanetData.swift
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
    
    func planetData(dataFile: String) -> String {
        
        let planetJSONURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "json")!
        let rawPlanetJSON = NSData(contentsOfURL: planetJSONURL)!
        
        var planetDictionaryFromJSON: [[String:AnyObject]]!
        
        do {
            planetDictionaryFromJSON = try! NSJSONSerialization.JSONObjectWithData(rawPlanetJSON, options: NSJSONReadingOptions()) as! [[String:AnyObject]]
        }
        
        var topPlanetName:String = "Blank"
        var topPlanetScore:Int = 0
        
        
        for planets in planetDictionaryFromJSON {
            if let planetName = planets["Name"] as? String {
                print("Printing Planet Name \(planetName)")
                if let CommonItemsDetected = planets["CommonItemsDetected"] as? Int {
                    print("Printing CommonItem# \(CommonItemsDetected)")
                    if let UncommonItemsDetected = planets["UncommonItemsDetected"] as? Int {
                        print("UncommonItemsDetected# \(UncommonItemsDetected)")
                        if let RareItemsDetected = planets["RareItemsDetected"] as? Int {
                            print("RareItemsDetected# \(RareItemsDetected)")
                            if let LegendaryItemsDetected = planets["LegendaryItemsDetected"] as? Int {
                                print("LegendaryItemsDetected# \(LegendaryItemsDetected)")
                                
                                let tempPoints = (LegendaryItemsDetected * 4) + (RareItemsDetected * 3) + (UncommonItemsDetected * 2) + (CommonItemsDetected * 1)
                                
                                if tempPoints >= topPlanetScore {
                                    topPlanetName = planetName
                                    topPlanetScore = tempPoints
                                }
                            }
                        }
                    }
                }
            }
            
        }
        
        return topPlanetName
    }
}


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"



// Self notes.-----------------

// using PlanetData.json


//1 point for each common item detected
//2 points for each uncommon item detected
//3 points for each rare item detected
//4 points for each legendary item detected


// We are trying to find the greatest scored planet.







//Code Signature.
//3960c466b6e28ebeeaf7d8bbfb464ecf