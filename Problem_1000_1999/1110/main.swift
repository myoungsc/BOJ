//
//  main.swift
//  1110
//
//  Created by myoung on 19/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var count = 0
var original = 0
if let input = readLine() {
    original = Int(input) ?? 0
}

var next = original
repeat {
    count += 1
    if next < 10 {
        next = next * 11
        continue
    }
    let first = next % 10
    let second = (next % 10 + next / 10) % 10
    next = (first * 10) + second
} while original != next

print(count)
