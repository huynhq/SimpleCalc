//
//  main.swift
//  SimpleCalc
//
//  Created by Quynh Huynh on 4/3/16.
//  Copyright © 2016 Quynh Huynh. All rights reserved.
//

import Foundation

print("Enter an expression separated by returns:")
var input = readLine(stripNewline: true)!

var sum = 0
var count = 0

// counts additional numerical values for multi-operand operations
repeat {
    sum += Int.init(input)!
    count += 1
    input = readLine(stripNewline: true)!
} while Int.init(input) != nil

// handles fact, count, avg, and simple operations.
// fact only takes 1 operand
if(input == "fact" && count == 1) {
    var result = 1
    for index in 1...sum {
        result *= index
    }
    print(result);
} else if(input == "count") {
    print(count)
} else if(input == "avg") {
    // prints the avg from integer division
    print(sum / count)
} else {
    // handles simple operations
    var result = 0
    let two = Int.init(readLine(stripNewline: true)!)!
    let one = sum
    switch input {
        case "+":
            result = one + two
        case "-":
            result = one - two
        case "*":
            result = one * two
        case "/":
            result = one / two
        default:
            result = one % two
    }
    print("Result: \(result)");
}




