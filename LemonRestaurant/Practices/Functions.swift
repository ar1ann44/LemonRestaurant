//
//  Functions.swift
//  LemonRestaurant
//
//  Created by Ariana Osuna  on 21/09/26.
//


/*
 ---------- FUNCTIONS ----------
 
 
 ------- Syntax ----------
 
 func functionName(parameter:Type, parameter2:Type) -> ReturnType {
    // function body
    // logic goes here
 
 
    return value
 }
 
 */

import Playgrounds

#Playground("Functions") {
    // example1
    func printHello(){
        print("Hello world!")
    }
    
    printHello()
    
    // example2
    func greet(personName:String) -> String{
        let greeting = "hello \(personName)"
        return greeting
    }
    
    let message = greet(personName:"Ariana")
    print(message)
    
    print(greet(personName: "Samantha"))
    
    
    // example 3
    // function with unnamed parameter
    func helloCohort(_ cohortNumber:Int){
        print("Hello cohort \(cohortNumber), Welcome to MDI1")
    }
    helloCohort(13)
    helloCohort(99)
    helloCohort(66)
    
    // example 4
    func multiply(_ x:Int, _ y:Int) -> Int{
        return x * y
    }
    
    print(multiply(10, 3))
    
    
    
    
    
    
    
    
    
    
    
    
    
    
/*
    MINI CHALLENGE
        1. DEFINE A FUNCTION CALLED welcomeStudent.
        2. The function should take one parameter : name of type String.
        3. The function should return a String.
        4. Inside the function, build a message like "welcome, [name]!, ready to learn Swift?"
        5. Call the function with a simple name and print the result
 */
    
    
    func welcomeStudent(_ studentName:String){
        print("welcome, \(studentName), ready to learn swift?")
    }
    
    welcomeStudent("Ariana")
    welcomeStudent("leo")
}

