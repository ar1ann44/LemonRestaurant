//
//  switch.swift
//  LemonRestaurant
//
//  Created by Ariana Osuna  on 23/09/26.
//

import Playgrounds

/*
 ------- SWITCH ----------
 Lets you compare one value against multiple possible cases and run different code depending on which case matches.
 It's used when you want to check many conditions in a clean, organized way.
 
 ----- SYNTAX ---------
 
 switch value {
 case pattern1:
    code to run if value matches pattern1
 
 case pattern2
    code to run if values matches pattern2
 
 default:
    code to run in no cases match
 }
 */

#Playground ("Switch"){
    print("------ switch ------")
    
    print("\n numbers (int) ----")
    
    let number = 13
    
    switch number {
    case 1:
        print("number one")
        
    case 2:
        print("number two")
        
    default:
        print("other number")
        
    }
    
    // MARK: - Example 2
    
    let position = 13
    
    switch position {
    case 1:
        print("🥇 you came first")
    case 2:
        print("🥈 you came second")
    case 3:
        print("🥉 you came third")
        
    default:
        print("you placed \(position)")
    }
    
    // MARK: -
    print("\n-- Text (String), Matching multiple values --")
    

    
    // A, A+ -> excellent!
    // B, B+ -> good job
    // C -> you passed
    // default -> try again
    
    let grade = "A+"
    
    switch grade {
    case "A", "A+":
        print("excellent")
    
    case "B", "B+":
        print("good job")
    
    case "C":
        print("you passed")
    
    default:
        print("try again.")
    }
    
    // MARK: -
    print ("\n-- Numbers (Int), using range --")
    // 90 - 100 -> Grade A
    // 80 - 89 -> Grade B
    // 70 - 79 -> Grade C
    // default -> Grade F
    
    let score = 77
    
    switch score {
    case 90 ... 100:
        print("Grade: A")
    case 80 ... 89:
        print("Grade: B")
    case 70 ... 79:
        print("Grade: C")
    default:
        print("Grade: F")
    }
    
    // MARK: -
    /*
     MINI CHALLENGE
     
     1. Create a variable called day
     2. Use switch to print:
        - "weekend" for saturday or sunday
        - "weekday" for Monday - Friday
        - "Invalid day" for anything else
     
     */
    
    let day = "apple"
    
    switch day {
    case "saturday", "sunday":
        print("weekend")
    case "monday", "tuesday", "wednesday", "thursday", "friday":
        print("weekday")
    default:
        print("invalid day")
    }
}
