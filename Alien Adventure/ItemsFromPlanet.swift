//
//  ItemsFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
//  Udacity Editor - Student Signature.
//  Code Signature.
//  3960c466b6e28ebeeaf7d8bbfb464ecf

extension Hero {
    
    func itemsFromPlanet(inventory: [UDItem], planet: String) -> [UDItem] {
        
        //Variables.
        var itemsArray = [UDItem]()
        
        if (inventory.count > 1) { //Array Check.
            
            
            //            print("Scene Inventory - check up");
            //            //Inventory Check
            //            for (var i = 0; i < inventory.count; i++) {
            //                print("\(inventory[i].name)");
            //                print("\(inventory[i].name.characters.count)");
            //            }
            
            
            for item in inventory {
                
                if let tempDic = item.historicalData["PlanetOfOrigin"] as? String {
                    if tempDic == planet {
                        print("current planet \(planet)")
                        print("Found! \(item.name)")
                        itemsArray.append(item)
                    }
                }
            }
        }
        
        
        return [UDItem](itemsArray)
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"




//Code Signature.
//3960c466b6e28ebeeaf7d8bbfb464ecf