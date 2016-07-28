//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        
        //Variables
        var case1: String;        // a XX b
        var case2: String;        // a X b X
        var case3: String;        // C X B X
        var case4: String;        // C XX B
        var tempString: String;
        
        print("printing s1", s1);
        print("printing s2", s2);
        print("printing shuffle", shuffle);
        
        if (s1.characters.count + s2.characters.count != 4)  {
            print("Chars are not 4. Warning. Case can be unpridictable.");
        }
        
        if ((s1 == "" || s2 == "") && (shuffle == ""))
        {
            print("Input is blank");
            return true;
        }
        
        if ((s1 == "" || s2 == "") && (shuffle != ""))
        {
            print("Output is wrong");
            return false;
        }
        
        
        // A XX B
        case1 = s1;
        case1.insertContentsOf(s2.characters, at: case1.startIndex.successor())
        print("Printing Case1", case1);
        
        
        // A X B X
        case2 = s1;
        tempString = String(case2[case2.startIndex.advancedBy(1)]);
        case2.removeAtIndex(case2.startIndex.advancedBy(1));
        case2.insertContentsOf(s2.characters, at: case2.startIndex.advancedBy(1))
        case2.removeAtIndex(case2.startIndex.advancedBy(2));
        case2.insertContentsOf(tempString.characters, at: case2.startIndex.advancedBy(2))
        case2.insertContentsOf(s2.characters, at: case2.startIndex.advancedBy(3))
        case2.removeAtIndex(case2.startIndex.advancedBy(3));
        print("Printing Case2", case2);
        
        
        // C X D X
        case3 = s2;
        tempString = String(case3[case3.startIndex.advancedBy(1)]);
        case3.removeAtIndex(case3.startIndex.advancedBy(1));
        case3.insertContentsOf(s1.characters, at: case3.startIndex.advancedBy(1))
        case3.removeAtIndex(case3.startIndex.advancedBy(2));
        case3.insertContentsOf(tempString.characters, at: case3.startIndex.advancedBy(2))
        case3.insertContentsOf(s1.characters, at: case3.startIndex.advancedBy(3))
        case3.removeAtIndex(case3.startIndex.advancedBy(3));
        print("Printing Case3", case3);
        
        
        // C XX D
        case4 = s2;
        case4.insertContentsOf(s1.characters, at: case4.startIndex.successor())
        print("Printing Case4", case4);
        
        if ( shuffle == case1) {
            return true;
        } else if ( shuffle == case2) {
            return true;
        } else if ( shuffle == case3) {
            return true;
        } else if ( shuffle == case4) {
            return true;
        }
        
        
        return false;
    }
}






//Code Signature.
//3960c466b6e28ebeeaf7d8bbfb464ecf