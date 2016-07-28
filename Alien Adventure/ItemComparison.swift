//
//  ItemComparison.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
//  Udacity Editor - Student Signature.
//  Code Signature.
//  3960c466b6e28ebeeaf7d8bbfb464ecf


import Foundation

func <(lhs: UDItem, rhs: UDItem) -> Bool {
    
    
    if (lhs.rarity.rawValue < rhs.rarity.rawValue) {
        //print("Print LHS Value \(lhs.rarity.rawValue)");
        //print("Print RHS Value \(rhs.rarity.rawValue)");
        return true
    } else if (lhs.rarity.rawValue == rhs.rarity.rawValue) {
        if (lhs.baseValue < rhs.baseValue){
            //print("Printing LHS value \(lhs.baseValue)")
            //print("Printing RHS value \(rhs.baseValue)")
            return true
        }
    }
    
    
    return false
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 5".


// Self notes.-----------------

// Wait this is Overloading operator.

// If they have same Rarity then compare their base value.


// lhs is considered less than rhs if it is less rare than rhs

// If lhs and rhs have the same rarity, then lhs is considered less than rhs if the base value of lhs is less than the base value of rhs.



//Code Signature.
//3960c466b6e28ebeeaf7d8bbfb464ecf