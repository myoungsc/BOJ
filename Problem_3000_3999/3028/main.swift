//
//  main.swift
//  3028
//
//  Created by myoung on 18/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    var ball = [true, false, false]
    for char in input {
        switch char {
        case "A": ball.swapAt(0, 1)
        case "B": ball.swapAt(1, 2)
        case "C": ball.swapAt(0, 2)
        default: break
        }
    }
    
    for (i, isBall) in ball.enumerated() {
        if isBall {
            print(i+1)
            break
        }
    }
}
