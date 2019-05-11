//
//  main.swift
//  17173
//
//  Created by myoung on 11/05/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    var sums = Set<Int>()
    let values = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    if let input = readLine() {
        let arr = input.split { $0 == " " }.map{ Int($0) ?? 0 }
        for element in arr {
            var n = element
            var count = 1
            while n <= values[0] {
                n = element * count
                count += 1
                if n <= values[0] { sums.insert(n) }
            }
        }
    }
    print(sums.reduce(0, +))
}
