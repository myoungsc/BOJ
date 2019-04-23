//
//  main.swift
//  4344
//
//  Created by myoung on 23/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

import Foundation

var n = 0
if let input = readLine() {
    let temp = input.split{ $0 == " " }
    n = Int(temp[0]) ?? 0
}

for _ in 0 ..< n {
    var compares: [Double] = []
    var people: Int = 0
    if let input = readLine() {
        let temps = input.split{ $0 == " " }
        for (i, temp) in temps.enumerated() {
            if i == 0 {
                people = Int(temp) ?? 0
            } else {
                compares.append(Double(temp) ?? 0)
            }
        }
        
        var ave: Double = compares.reduce(0, +)
        ave = ave/Double(people)
        
        var aveCount = 0
        for compare in compares {
            if Double(compare) > ave { aveCount += 1 }
        }
        let persent = Double(aveCount)/Double(people)*100
        let output = String(format: "%.3f", persent)
        print("\(output)%")
    }
}
