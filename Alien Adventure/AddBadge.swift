//
//  AddBadge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/8/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
//  Udacity Editor - Student Signature.
//  Code Signature.
//  3960c466b6e28ebeeaf7d8bbfb464ecf

extension UDGameSM {
    
    func addBadge(hero: Hero, alien: Alien) {
        switch(alien.colorVariant) {
        case .Magenta:
            hero.addBadge(Badge(requestType: alien.currentRequestType))
        case .Teal:
            hero.addBadge(SpecialBadge(requestType: alien.currentRequestType))
        }
    }
}