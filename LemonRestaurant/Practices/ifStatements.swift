//
//  ifStatements.swift
//  LemonRestaurant
//
//  Created by Ariana Osuna  on 19/09/26.
//

/*
 
 IF - ELSE IF - ELSE
 
 -------- Syntax ---------
 
 if condition1 {
    this block runs if condition 1 is true
 }  else if condition2 {
 this block runs if condition1 is false and condition2 is true
 }  else {
    this block runs if none of the above conditions are true
 }

*/
import Playgrounds

#Playground ("IfStatements"){
    // example 1
    var waterTemperature: Int = 30
    
    if waterTemperature > 100 {
        print("The water is boiling")
    } else {
        print("The water is not boiling")
    }
    
    //example2
    var position: Int = 3
    
    if position == 1 {
        print ("🥇 you came first")
    }  else if position == 2 {
        print ("🥈 you came second")
    }  else if position == 3{
        print("🥉 you came third")
    }else {
        print ("🏃‍♂️ you finish in position \(position). keep training!")
    }
    
    // example 3
    var guests: Int = 13
    let capacity: Int = 20
    
    if guests < capacity {
        print("we have capacity")
    }  else {
        print("over capacity")
    }
    
    /*
     Mini-challenge
     1. Create a variable called topping and assign a string value like chocolate or honey
     2. Write an if statement that checks the value of topping.
        - if the topping is strawberries, print "sweet choice!"
        - if the topping is chocolate, print "delicious!"
        - if the topping is honey, print "healthy option!"
        - for any other topping, print "interesting topping"
     3. Try changing the value of topping to diferent strings and see how the program responds.
     
     */
    
    var topping = "Honey"
    
    if topping == "strawberries" {
        print("sweet choice!")
    } else if topping == "chocolate" {
        print("delicious!")
    } else if topping == "honey" {
        print("healthy option!")
    } else {
        print("interesting topping")
    }
    
}
