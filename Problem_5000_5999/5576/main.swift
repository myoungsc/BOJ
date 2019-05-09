//
//  main.swift
//  5576
//
//  Created by myoung on 09/05/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var w: [Int] = [], k: [Int] = []

for _ in 0 ..< 10 {
    if let input = readLine() {
        w.append(Int(input) ?? 0)
    }
}

for _ in 0 ..< 10 {
    if let input = readLine() {
        k.append(Int(input) ?? 0)
    }
}

w = w.sorted{ $0 > $1 }
k = k.sorted{ $0 > $1 }

var sumW = 0, sumK = 0
for i in 0 ..< 3 {
    sumW += w[i]
    sumK += k[i]
}

print("\(sumW) \(sumK)")
