//
//  RemoveDuplicates.swift
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
    
    func removeDuplicates(inventory: [UDItem]) -> [UDItem] {        
        return Array(Set(inventory))
    }
    
}
