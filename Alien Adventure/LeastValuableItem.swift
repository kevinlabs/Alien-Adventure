//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        
        //Variables
        var lowValItem: UDItem?
        
        if (inventory.count > 1) { //Array Check.
            
            //            print("Fourth Scene Inventory");
            //            //Inventory Check
            //            for (var i = 0; i < inventory.count; i++) {
            //                print("\(inventory[i].name)");
            //                print("\(inventory[i].name.characters.count)");
            //            }
            
            
            //Beginning Value initilization.
            lowValItem = inventory[0];
            
            for (var i = 0; i < inventory.count; i++) {
                if (lowValItem?.baseValue >= inventory[i].baseValue){
                    lowValItem = inventory[i];
                    //print("\(inventory[i].name)");
                    //print("\(inventory[i].baseValue)");
                }
            }
            
            //print("Returning this val. \(lowValItem!.baseValue)");
            return lowValItem;
            
        }
        
        return nil;
        
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"







//Code Signature.
//3960c466b6e28ebeeaf7d8bbfb464ecf