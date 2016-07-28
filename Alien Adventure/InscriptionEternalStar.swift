//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
//  Udacity Editor - Student Signature.
//  Code Signature.
//  3960c466b6e28ebeeaf7d8bbfb464ecf

extension Hero {
    
    func inscriptionEternalStar(inventory: [UDItem]) -> UDItem? {
        
        
        
        if (inventory.count > 1) { //Array Check.
            
            //            print("Third Scene Inventory");
            //            //Inventory Check
            //            for (var i = 0; i < inventory.count; i++) {
            //                print("\(inventory[i].name)");
            //                print("\(inventory[i].name.characters.count)");
            //            }
            
            for item in inventory {
                //print("\(item.inscription)");
                
                if let matchStar = item.inscription {
                    if matchStar.containsString("THE ETERNAL STAR") {
                        //print("\(item)");
                        return item;
                    }
                }
            }
            
        }
        
        return nil
        
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"








//Code Signature.
//3960c466b6e28ebeeaf7d8bbfb464ecf