//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
//  Udacity Editor - Student Signature.
//  Code Signature.
//  3960c466b6e28ebeeaf7d8bbfb464ecf

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        
        //For some reason First function calls with 0 items in it.
        //Which leads to crash. this is verifcation for inventory array initialization check count.
        var highestIndexCounter:Int = 0;
        var highestNum:Int = 0 ;
        var reversedString = [Character]();
        var reversed=String();
        
        
        
        if (inventory.count > 1) {
            
            for (var i = 0; i < inventory.count; i++) {
                if (inventory[i].name.characters.count >= highestNum) {
                    highestNum = inventory[i].name.characters.count;
                    highestIndexCounter = i;
                }
            }
            
            //            //Inventory Check
            //            for (var i = 0; i < inventory.count; i++) {
            //                print("\(inventory[i].name)");
            //                print("\(inventory[i].name.characters.count)");
            //            }
            
            //Highest
            print("Highest Item is: \(inventory[highestIndexCounter].name)");
            
            
            //            for (var i = 16 ; i >= 0; i--) {
            //                //reversedString[i] = storeString[i];
            //                reversedString.append(storeString[i]);
            //            }
            //
            ///Method1-Hard
            // I tried to use mixed with array and string method. Which was hard to find out how to do it.
            var tempString = Array(inventory[highestIndexCounter].name.characters); //Array Charcters.
            
            for (var i = inventory[highestIndexCounter].name.characters.count-1; i >= 0; i--) {
                reversedString.append(tempString[i]);
            }
            
            reversed = String(reversedString);
            
            //
            
            
            ///Method2-Easy
            //This is easiest way and fastest to get string reversed.
            //reversed = String(inventory[highestIndexCounter].name.characters.reverse())
            
            
            print("Reversed is: \(reversed)");
            
        }
        
        return ("\(reversed)");
        
    }
    
}


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"










//Code Signature.
//3960c466b6e28ebeeaf7d8bbfb464ecf