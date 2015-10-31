//
//  main.swift
//  HBPoints
//
//  Created by Angel Kukushev on 10/29/15.
//  Copyright © 2015 xdevx332. All rights reserved.
//

import Foundation

func input() -> String {
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    return NSString(data: inputData, encoding: NSUTF8StringEncoding) as! String
}
extension String {
    var length: Int { return characters.count    }  // Swift 2.0
}

print("Starting point: (0, 0)")

var theInput: String = input()

var len = theInput.length

var x: Int = 0

var y: Int = 0
var reverse: Bool = false

var currentChar: String

for i in 0...len-2{
    
    var symbolAtIndex = theInput[theInput.startIndex.advancedBy(i)]
    
    if(reverse){
        if(symbolAtIndex == ">"){
            x = x - 1
        }
        else if(symbolAtIndex == "<"){
            x = x + 1
        }
        else if(symbolAtIndex == "^"){
            y = y - 1
        }
        else if(symbolAtIndex == "v"){
            y = y + 1
        }
        else if(symbolAtIndex == "~"){
            reverse = false
            continue;
        }
    }
    
    if(reverse == false){
        if(symbolAtIndex == ">"){
            x = x + 1
        }
        else if(symbolAtIndex == "<"){
            x = x - 1
        }
        else if(symbolAtIndex == "^"){
            y = y + 1
        }
        else if(symbolAtIndex == "v"){
            y = y - 1
        }
        else if(symbolAtIndex == "~"){
            reverse = true
            continue;
        }
    }
 
}
print("(\(x), \(y))")

