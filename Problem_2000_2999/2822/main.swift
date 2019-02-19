//
//  main.swift
//  2822
//
//  Created by myoung on 19/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var score = Array(repeating: 0, count: 8)
var index: [Int] = []

for i in 0 ..< 8 {
    if let input = readLine() {
        score[i] = Int(input) ?? 0
    }
}

var temp = score.sorted{ $0 > $1 }
for i in 0 ..< 5 {
    index.append(temp[i])
}

print(index.reduce(0, +))
for i in 0 ..< score.count {
    if index.contains(score[i]) {
        print(i+1, terminator: " ")
    }
}
