//
//  FindTheLasers.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
//
//  Udacity - Student Signature.
//  Code Signature.
//  3960c466b6e28ebeeaf7d8bbfb464ecf


extension Hero {
    
    func findTheLasers() -> (UDItem -> Bool) {
        
        func containsLaser(item: UDItem) -> Bool {
            return true
        }
        
        return containsLaser
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"