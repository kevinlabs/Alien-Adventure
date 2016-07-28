//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
//  Udacity Editor - Student Signature.
//  Code Signature.
//  3960c466b6e28ebeeaf7d8bbfb464ecf


extension Hero {
    
    //UDItem is back! :D phew...
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        //--Variables--
        var houseOfArray: [Character] = []                  //Storing initital Characters.
        var pottersDictionary: [Character: Int] = [:]       //Dictionary of Characters count
        var tempVal: Int = 0                                //Temp Top Score
        var topAlphaDog:Character = "!"                     //Top Alphabet Indicator
        
        
        //--varvarvarvar----
        
        
        
        if (inventory.count > 1 ) {
            //checking for fake inventory. XD
            
            for item in inventory {
                var tempNames = item.name
                print("Printing Names\(tempNames)")
                for characters in tempNames.lowercaseString.characters {
                    houseOfArray.append(characters)
                    print("printing house of array \(houseOfArray)")
                }
            }
            
            print("printing house of array 2 \(houseOfArray)")
            
            for hmmCharacter in houseOfArray {
                pottersDictionary[hmmCharacter] = (pottersDictionary[hmmCharacter] ?? 0) + 1
            }
            
            print("printing pottersDictionary. \(pottersDictionary)")
            
            for (key,value) in pottersDictionary {
                
                if value > tempVal {
                    topAlphaDog = key
                    tempVal = value
                }
                
                print("\(key) = \(value)")
            }
            
            print("Printing top Char \(topAlphaDog), Priting value \(tempVal)")
            return topAlphaDog
        }
        
        
        
        return nil
    }
}


// Self notes.-----------------


// -If you take the names of all the itmes in our inventory ... what is the most common character ?
