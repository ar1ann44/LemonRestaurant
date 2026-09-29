//
//  ForEach.swift
//  LemonRestaurant
//
//  Created by Ariana Osuna  on 26/09/26.
//

/*

 Method availble on any sequence in Swift(ranges, strings and arrays).
 It lets you run a block of code once for every element in that sequence.
 It works similarly to a for-in loop, but uses a closure intead of a loop syntax
 
 ----- Syntax -----
 sequence.forEach { element in
    / do somethong with element
 }
 
*/


import Playgrounds

#Playground {
    print("----- FOREACH ------")
    print("\n ----- forEach with a range ------")
    
    (1...13).forEach{ number in
        print(number)
    }
    
    // MARK: -
    print("\n -- forEach with String --")
    
    "Swift".forEach{ character in
        print(character)
    }
    
    // MARK: -
    print("\n -- forEach with array")
    
    var students:[String] = ["Ariana", "Eric", "Leo", "Pam", "Angela"]
    
    students.forEach{ name in
        print(name)
    }
    
    
    



}
