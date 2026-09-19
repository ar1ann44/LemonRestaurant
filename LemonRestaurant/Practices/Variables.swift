//
//  Variables.swift
//  LemonRestaurant
//
//  Created by Ariana Osuna  on 16/09/26.
//
import Playgrounds

#Playground("Variables") {
    var restaurantName = "Little Lemon"
    print("Hello \(restaurantName)")

    restaurantName = "Little Lemon bistro"
    print("Now we are called \(restaurantName)!")

    //constants cannot change

    let city = "New York"
    //city = "Chicago" // Error Cannot assign a value to a const
    print("Our restaurant is located in \(city)")

    //String
    var specialDish = "Pasta"
    //Integer
    var avialableTables = 5
    //Double
    var dishPrice = 12.50
    //Booleans
    var isOpen = true

    print("Today's special: \(specialDish) - $\(dishPrice)")
    
    print("Today's special: \(specialDish) - $\(dishPrice)")
    //Mini Challenge 1:
    // Create a variable called 'numberOfTables" and a constant called 'ownerName
    var numberOfTables = 10
    let ownerName = "Mario"
    
    
    // Print a sentence like:
    // "Little Lemon has 10 tables, owned by Mario."
    
    print("Little Lemon has \(numberOfTables) tables, owned by \(ownerName).")
    
    //Mini Challenge 2:
    //Create one variable of each type ('String', describes something about a restaurant.
    //Print a short description using them all in one sentence.
    //Example:
    //'Int', 'Double', 'Bool') that
    //Little Lemon is open: true, has 20 tables, and our soup costs $4.99.
    // We can also explicity define types (optional)
    
    var
    anotherDish: String = "Pizza"
    var tableCount: Int = 10
    var price: Double = 8.99
    var openStatus: Bool = false
    var pastaPrice = 10.50
    var
    saladPrice = 6.25
    var total = pastaPrice + saladPrice
    print ("Total price: $\(total)")
    
    print("Little Lemon is open: \(openStatus), haz \(tableCount) tables, and our \(anotherDish) costs $\(price).")
    //Mini Challenge 3:
    //Add a 15% tip to the total and print the final amount.
    
    let tip = total * 0.15
    let finalAmount = total + tip
    print("Final amount with tip: $\(finalAmount)")
}

