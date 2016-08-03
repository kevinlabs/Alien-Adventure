//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
//  Udacity Editor - Student Signature.
//  Code Signature.
//  3960c466b6e28ebeeaf7d8bbfb464ecf

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {

        for requestType in requestTypes {
            
            let badgeTemp = badges.contains{(temp) in temp.requestType == requestType}
            //Closure method.
            
            
            if badgeTemp == false {
                return false
            }
        }
        return true
    }
    
}
