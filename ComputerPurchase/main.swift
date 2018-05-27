//
//  main.swift
//  ComputerPurchase
//

import Foundation

// INPUT
// Global variable, tracks how many computers we are going to collect specs for
var countOfExpectedSpecsThatWillBeProvided = 3

// Write a loop to actually determine how many computer specs the user will provide
while true {
    print("How many specs will be provided?")
    guard let givenInput = readLine() else {
        continue
    }
    
    guard let givenInteger = Int(givenInput) else {
        continue
    }
    if givenInteger <= 0 || givenInteger > 10  {
        continue
    }
    countOfExpectedSpecsThatWillBeProvided = givenInteger
    break
}


// e.g.: write the rest of the INPUT section


// PROCESS & OUTPUT
// Implement the primary logic of the problem here
// Some output may be given here if you desire

//Create a global variable
var specInput = "SuperFastComputer 1000 50 75"
let sum = 0
var bestComputer = -1
var perfectName = ""
// Collect the list of computer specs here
for counter in 1...countOfExpectedSpecsThatWillBeProvided {
    
    // Ask user for the specs for a given computer
    print("Spec \(counter)?")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    specInput = givenInput
    
    
    print("The example input is: \(specInput)")
    //Separate the codes to many sections
    let specPieces = specInput.split(separator: " ")
    //Separate the values
    let computerName = specPieces[0]
    let computerRAM = specPieces[1]
    let computerCPU = specPieces[2]
    let computerDiskSpace = specPieces[3]
    //Print out the names.
    print("Computer name is: \(computerName)")
    print("Computer RAM amount is: \(computerRAM)")
    print("Computer CPU speed is: \(computerCPU)")
    print("Computer disk space is: \(computerDiskSpace)")
    
    // Calculate the value for each computer
    let specComputer = 2 * Int(computerRAM)! + 3 * Int(computerCPU)! + Int(computerDiskSpace)!
    
    //Find the best computer
    //When the value of one computer is bigger than the other one, replace the best computer with the new computer
    if specComputer > bestComputer {
        bestComputer = specComputer
        //Let the name of the perfect computer be the name of the new computer
        perfectName = String(computerName)
        
    }
}

// Print the result
print("The best computer for you is \(perfectName)")
