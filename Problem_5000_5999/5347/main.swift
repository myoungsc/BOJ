//
//  main.swift
//  5347
//
//  Created by myoung on 20/05/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

func gcd(_ a: Int, b: Int) -> Int {
    var aValue = a, bValue = b
    while bValue != 0 {
        let temp = aValue % bValue
        aValue = bValue
        bValue = temp
    }
    return aValue
}

func lcm(_ a: Int, b: Int) -> Int {
    return a * b / gcd(a, b: b)
}

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
            print(lcm(value[0], b: value[1]))
        }
    }
}

