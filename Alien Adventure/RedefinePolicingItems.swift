//
//  RedefinePolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
//
//  Udacity - Student Signature.
//  Code Signature.
//  3960c466b6e28ebeeaf7d8bbfb464ecf


// MARK: - UDPolicingError

enum UDPolicingError: ErrorType {
    case NameContainsLaser
    case ItemFromCunia
    case ValueLessThan10
}

extension Hero {
    
    func redefinePolicingItems() -> (UDItem throws -> Void) {
        
        func policingFilter(item: UDItem) throws -> Void {
            if item.name.lowercaseString.containsString("laser") {
                throw UDPolicingError.NameContainsLaser
            }
            
            if let tempDic = item.historicalData["PlanetOfOrigin"] as? String {
                if tempDic == "Cunia" {
                    throw UDPolicingError.ItemFromCunia
                }
            }
            
            if item.baseValue < 10 {
                throw UDPolicingError.ValueLessThan10
            }
            
        }

        return policingFilter        
    }    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"