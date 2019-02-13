//
//  main.swift
//  3009
//
//  Created by myoung on 13/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

func alotData(_ value: [Int]) -> Int {
    let temp = value[0]
    var count = 0
    for i in 1 ..< value.count {
        if value[i] == temp {
            count += 1
        }
    }
    let res = count == 0 ? temp : value.filter{ $0 != temp }[0]
    return res
}

var x: [Int] = [], y: [Int] = []
for _ in 0 ..< 3 {
    if let input = readLine() {
        let values = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
        x.append(values[0])
        y.append(values[1])
    }
}

print(alotData(x), alotData(y))
