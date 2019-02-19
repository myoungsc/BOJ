//
//  main.swift
//  1546
//
//  Created by myoung on 14/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var n = 0
if let input = readLine() {
    let temp = input.split{ $0 == " " }
    n = Int(temp[0]) ?? 0
}

var compares: [Int] = []
if let input = readLine() {
    let temps = input.split{ $0 == " " }
    for temp in temps {
        compares.append(Int(temp) ?? 0)
    }
}

if let max = compares.max() {
    var sum: Double = 0.0
    for compare in compares {
        let temp = Double(compare)/Double(max)*100.0
        sum += temp
    }
    print(sum/Double(n))
}
