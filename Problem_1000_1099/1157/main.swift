//
//  main.swift
//  1157
//
//  Created by myoung on 11/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var word = ""
if let input = readLine() {
    word = input
}

let upperWord = word.uppercased()
var alpabets: [Character: Int] = [:]

for char in upperWord {
    let count = alpabets[char] ?? 0
    alpabets[char] = count + 1
}

var maxkey = ""
var maxCount = 0

for (i, alpabet) in alpabets.enumerated() {
    if i == 0 {
        maxkey = String(alpabet.key)
        maxCount = alpabet.value
        continue
    }
    if maxCount == alpabet.value {
        maxkey = "?"
    } else if maxCount < alpabet.value {
        maxkey = String(alpabet.key)
        maxCount = alpabet.value
    }
}

print(maxkey)
