//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
        //Variables.
        var testingArray = [UDItemRarity:Int]()
        //----------
        
        // Initilization to 0
        testingArray[.Common] = 0
        testingArray[.Uncommon] = 0
        testingArray[.Rare] = 0
        testingArray[.Legendary] = 0
        
        
        if (inventory.count > 1) { //Array Check.
            
            for kingKong in inventory {
                print(kingKong.rarity);
                
            }
            
            
            for item in inventory {
                if UDItemRarity.Common == item.rarity {
                    
                    testingArray[.Common]! += 1
                    
                } else if ( UDItemRarity.Uncommon == item.rarity) {
                    
                    testingArray[.Uncommon]! += 1
                    
                } else if ( UDItemRarity.Rare == item.rarity ) {
                    
                    testingArray[.Rare]! += 1
                    
                } else if ( UDItemRarity.Legendary == item.rarity ) {
                    
                    testingArray[.Legendary]! += 1
                    
                }
                
            }
            
            
            print(testingArray)
            
            
        } //if
        
        return testingArray
        
        
    } //rarityOfItems
    
} //Hero-----

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"


//--Self Notes.--


// I want to know how many common, uncommon, rare, and legendary items are in the inventory.

//Ok how do we tell which one is uncommon or rare or lengendary?

//hmm I might need to check again how UDItem is structured.

// Val 0 = Common
// Val 1 = Uncommon.
// Val 2 = Rare.
// Val 3 = Legendary.

//If Enums are immutable we just have to created a temporary one based one that category.


//1.Create a dictionary that keeps a count of how many items in the inventory are Common, Uncommon, Rare, and Legendary.
//2.For each item in the inventory, determine its rarity and then add one to the running count for that rarity.
//3.Return the dictionary.

//-- Procedure says return the dictionray. But it is Enum type. I am guessing Enum and Dictionary types are interchangeable??

// Creating Var assign enum becomes dictionary type.


//Code Signature.
//3960c466b6e28ebeeaf7d8bbfb464ecf
