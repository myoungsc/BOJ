//
//  main.swift
//  2979
//
//  Created by myoung on 15/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let price = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    var times: [[Int]] = Array(repeating: Array([]), count: 3)
    var min = 100, max = 0
    for i in 0 ..< 3 {
        if let input = readLine() {
            let temp = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
            times[i] = Array(temp[0] ..< temp[1])
            if min > times[i].min() ?? 0 { min = times[i].min() ?? 0 }
            if max < times[i].max() ?? 0 { max = times[i].max() ?? 0 }
        }
    }
    
    var priceSum = 0
    for i in min ... max {
        var car = 0
        for time in times {
            if time.contains(i) { car += 1 }
        }
        if car != 0 { priceSum += price[car-1] * car }
    }
    print(priceSum)
}
