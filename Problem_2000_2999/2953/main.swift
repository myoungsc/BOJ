//
//  main.swift
//  2953
//
//  Created by myoung on 15/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var maxIndex = 0
var maxScore = 0
for i in 0 ..< 5 {
    if let input = readLine() {
        let sum = input.split{ $0 == " " }.map{ Int($0) ?? 0 }.reduce(0, +)
        if maxScore < sum {
            maxScore = sum
            maxIndex = i+1
        }
    }
}
print("\(maxIndex) \(maxScore)")
