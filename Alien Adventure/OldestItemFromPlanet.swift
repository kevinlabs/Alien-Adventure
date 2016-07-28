//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        
        //Variables.
        var oldestItem: UDItem?
        
        if (inventory.count > 1) { //Array Check.
            
            
            print("Scene Inventory - check up");
            //Inventory Check
            for (var i = 0; i < inventory.count; i++) {
                print("\(inventory[i].name)");
                print("\(inventory[i].name.characters.count)");
            }
            
            
            oldestItem = inventory[0]
            
            for item in inventory {
                if let tempVal = item.historicalData["CarbonAge"] as? Int{
                    if let tempVal2 = oldestItem!.historicalData["CarbonAge"] as? Int {
                        if ( tempVal2 <= tempVal) {
                            oldestItem = item
                            print("Oldest is \(item.name)")
                        }
                    }
                    
                }
            }
            
            return oldestItem
            
        } // if
        
        
        //Default all other case.
        return nil
        
        
    } //-func
    
    
    
} //-Hero


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"




//Code Signature.
//3960c466b6e28ebeeaf7d8bbfb464ecf