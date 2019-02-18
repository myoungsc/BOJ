//
//  main.swift
//  11586
//
//  Created by myoung on 18/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

func output(_ array: [String], state: String) {
    for element in array {
        state == "2" ? print(element.reversed().map{ String($0) }.joined()) : print(element)
    }
}

if let input = readLine() {
    let n = Int(input) ?? 0
    var array: [String] = []
    for _ in 0 ..< n {
        if let input = readLine() {
            array.append(input)
        }
    }
    if let input = readLine() {
        output(input == "3" ? array.reversed() : array, state: input)
    }
}
