//
//  main.swift
//  1026
//
//  Created by myoung on 08/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

func minValue(_ a: [Int], _ b: [Int]) -> Int {
    var sum = 0
    let tempA = a.sorted()
    let tempB = b.sorted { $0 > $1 }
    
    for i in 0 ..< tempA.count {
        sum += tempA[i] * tempB[i]
    }
    return sum
}

if let input = readLine() {
    let _ = Int(input) ?? 0
    
    var a: [Int] = [], b: [Int] = []
    if let aInput = readLine() {
        a = aInput.split{ $0 == " " }.map{ Int($0) ?? 0}
    }
    
    if let bInput = readLine() {
        b = bInput.split{ $0 == " "}.map{ Int($0) ?? 0 }
    }
    print(minValue(a, b))
}
