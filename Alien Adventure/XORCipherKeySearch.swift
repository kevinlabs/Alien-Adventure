//
//  XORCipherKeySearch.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func xorCipherKeySearch(encryptedString: [UInt8]) -> UInt8 {
        
        // NOTE: This code doesn't exactly mimic what is in the Lesson. We've
        // added some print statements so that there are no warnings for
        // unused variables 😀.
        var key: UInt8 = 0
        
        // So encryptedString only containts 7 Array Value.
        // 0    1    2    3    4    5    6
        // 121, 104, 109, 111, 101, 120, 117
        // y  , h  , m  , o  , e  , x  , u
        
        // lets see if the value changes the over the time.
        // value dose not change on each loop run.
        
        //        print("1 Encrypted String is\(encryptedString[0])")
        //        print("2 Encrypted String is\(encryptedString[1])")
        //        print("3 Encrypted String is\(encryptedString[2])")
        //        print("4 Encrypted String is\(encryptedString[3])")
        //        print("5 Encrypted String is\(encryptedString[4])")
        //        print("6 Encrypted String is\(encryptedString[5])")
        //        print("7 Encrypted String is\(encryptedString[6])")
        
        var decrypted = [UInt8]()
        
        print("Length of Encrypted String is\(encryptedString.count)")
        
        //Basically saying loop through 0 to 255
        for x in UInt8.min..<UInt8.max {
            
            print("we are in the iteration of", x)
            
            
            
            for character in encryptedString {
                // ADD CODE: perform decryption
                //print(character)
                if encryptedString[0] ^ x == 117 {
                    key = x
                    print("key is found \(key)")
                    decrypted.append(character ^ x)
                }
            }
            
            //            if let decryptedString = String(bytes: decrypted,
            //                encoding: NSUTF8StringEncoding) where decryptedString == "udacity" {
            //                    // ADD CODE: found match, now what?
            //                print("Returning the key \(key)")
            //                return key
            //            }
            
            //            let tempVal = decrypted[0]
            //            print("printing the raw value \(tempVal)")
            //
            //
            if let decryptedString = String(bytes: decrypted, encoding: NSUTF8StringEncoding) {
                print("Printing DecryptedString \(decryptedString)")
                
            }
            
            
        }
        
        //        print("1 decrypted String is\(decrypted[0])")
        //        print("2 decrypted String is\(decrypted[1])")
        //        print("3 decrypted String is\(decrypted[2])")
        //        print("4 decrypted String is\(decrypted[3])")
        //        print("5 decrypted String is\(decrypted[4])")
        //        print("6 decrypted String is\(decrypted[5])")
        //        print("7 decrypted String is\(decrypted[6])")
        
        return key
        
    }
    
    
}


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"



//Code Signature.
//3960c466b6e28ebeeaf7d8bbfb464ecf

