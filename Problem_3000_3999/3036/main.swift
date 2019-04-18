//
//  main.swift
//  3036
//
//  Created by myoung on 18/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

func gcd(_ a: Int, b: Int) -> Int {
    var tempA = a, tempB = b
    while tempB > 0 {
        let temp = tempA % tempB
        tempA = tempB
        tempB = temp
    }
    return tempA
}

if let _ = readLine() {
    if let input = readLine() {
        var values = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
        let first = values.removeFirst()
        for value in values {
            let temp = gcd(first, b: value)
            print("\(first/temp)/\(value/temp)")
        }
    }
}
