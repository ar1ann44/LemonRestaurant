//
//  Arrays.swift
//  LemonRestaurant
//
//  Created by Ariana Osuna  on 26/09/26.
//


/*
 --------- ARRAYS ----------
 Ordered collection that strores multiples vaules of the same type in a single variable. Values are stored in a specific order.
    Each value has an index starting at 0.
 
 
 ---------- SYNTAX -----------
 var/let arrayName:[dataType] = [value1, vaule2, value3]
 */


import Playgrounds

#Playground {
    print("----- ARRAYS -----")
    
    print("\n --- basic array (string) ---")
    var dishes:[String] = ["pizza 🍕", "pasta 🍝 ", "soup 🍲"]
    
    print(dishes)
    print(dishes[0])
    print(dishes[1])
    print(dishes[2])
    print(dishes.count) //3
    
    print("\n -- adding a new dish (append) --")
    dishes.append("salad 🥗")
    print(dishes)
    
    print("\n -- removing a dish (remove) --")
    
    dishes.remove(at: 1)
    print(dishes)
    
    print("\n -- adding a new dish in x position (insert)--")
    dishes.insert("hamburger 🍔 ", at: 2)
    print(dishes)
    
    /*
     MINI CHALLENGE
     
     CREATE AN ARRAY WITH YOUR TOP 3 FAVORITES DESSERTS AND PRINT THEM.
     DONT FORGET TO INSERT THE DATA TYPE OF YOUR VARIABLE
     */
    
    print("\n --- top best desserts ---")
    
    var desserts:[String] = ["tiramisu", "ice cream", "double chunk chocolate cookie"]
    
    print(desserts)
    
    print(desserts.isEmpty) // isEmpty
    
    print(desserts.contains("soda"))
    
    // MARK: - Double
    
    print("\n -- Array (Double) --")
    var prices:[Double] = [9.99, 10.49, 5.99]
    print(prices)
    print(prices[2])
    
    let total = prices[0] + prices[1] + prices[2]
    
    print("total \(total)")
    
    /*
     MINI-CHALLENGE
     you will practice the 5 essential array methods:
     - append()
     - remove(at:)
     - count
     - isEmpty
     - contains()
     
     Step:
     1. Create an array called hobbies with 5 hobbies
     2. Print the array
     3. Add a new hobby yo the list
     4. Check if a specific hobby existsin the list
     5. Print how many hobbies you have.
     6. Check if the list is empty
     */
    
    print("\n HOBBIES")
    
    var hobbies:[String] = ["watch tv shows", "videogames", "paint", "read", "listen to music"]
    print(hobbies)
    
    hobbies.append("build legos")
    print(hobbies)
    
    print(hobbies.contains("paint"))
    
    print(hobbies.count)
    
    print(hobbies.isEmpty)
    
    hobbies.remove(at: 3)
    
    print(hobbies)
    
    
}

