//
//  Dictionaries.swift
//  LemonRestaurant
//
//  Created by Ariana Osuna  on 28/09/26.
//

/*
 ----- DICTIONARY ------
 
 Unordered collection that stores kay-values pairs.
 Each key must be unique.
 Keys and values can be any type, but all keys must share the same type, and all values must share the same type.
 
 
 ------- SYNTAX -------
 
 var/let dictonaryName:[keyType: valueType] = [
    key1: value1,
    key1: value2,
    key1: value3
]
 
 */


import Playgrounds

#Playground {
    print("------ DICTIONARIES -------")
    
    print("------ STRING VALUES -------")
    
    let studentInformation:[String:String] = [
        "firstName": "ariana",
        "lastName": "osuna",
        "cohort": "66",
        "email": "osuna.jenifer@uabc.edu.mx"
    ]
    
    print(studentInformation)
    print(studentInformation["firstName"] ?? "not found")
    print(studentInformation["lastName"]!)
    
    print(studentInformation.keys)
    
    studentInformation.forEach { key, value in
        print("\(key) - \(value)")
    }
    
    // MARK: -
    
    print("\n - Int value -")
    var servingsAvailable:[String:Int] = [
        "pizza": 12,
        "pasta": 7,
        "salad": 8
    ]
    
    print(servingsAvailable["salad"] ?? "not found")
    
    print("-- add a new item --")
    servingsAvailable["soup"] = 4 // add an item
    print(servingsAvailable)
    
    print("update an existing item")
    
    print("-- update an existing item --")
    servingsAvailable["pasta"] = 6 // update an item
    print(servingsAvailable)
    
    print("-- remove an existing item --")
    
    servingsAvailable["salad"] = nil // remove an item
    print(servingsAvailable)
    
    print("-- dictionary methods --")
    print(" today we have \(servingsAvailable.count) dishes in the stock")
    print("keys: \(servingsAvailable.keys)") // get all keys
    print("keys: \(servingsAvailable.values)") // get all values
    servingsAvailable.removeAll() // remove all items
    print(servingsAvailable)
    
    // MARK: -
    /*
     -- MINI CHALLENGE --
     
     start with this dictionary
     
     var ingredients = [
        "Tomato": 888,
        "Cheese": 16,
        "Garlic": 6,
        "Potato": 12,
        "Mushroom": 10,
        "Spinach": 2
     ]
     
     1. add/update the new ingredients the manager brought:
     8 onions
     24 carrots
     12 letuces
     3 spinach
     
     2. fix the mistakes
     - tomatoes were incorrectly count as 888, bur the correct amount is 88
     - cheese packages were incorrectly counted, there are 0 packages
     
     3. after one working day, print a full report
     - show each ingredient and its amount
     
     */
    print(" - SUPERMARKET - ")
    
    var ingredients = [
       "Tomato": 888,
       "Cheese": 16,
       "Garlic": 6,
       "Potato": 12,
       "Mushroom": 10,
       "Spinach": 2
    ]
    
    ingredients["Onions"] = 8
    ingredients["Carrots"] = 24
    ingredients["Letuces"] = 12
    ingredients["Spinach"] = (ingredients["Spinach"] ?? 0)
    
    ingredients["Tomato"] = 88
    ingredients["Cheese"] = 0
    // ingredients["Cheese"] = nil
    
    ingredients.forEach { ingredientName, ingredientQuantity in
        print("\(ingredientName) - \(ingredientQuantity)")
    }

    
}
