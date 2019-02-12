//
//  main.swift
//  1292
//
//  Created by myoung on 12/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let location = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    var values: [Int] = []
    for i in 1 ... 1000 {
        for _ in 0 ..< i {
            values.append(i)
        }
    }
    var res = 0
    for i in location[0] ... location[1] {
        res += values[i-1]
    }
    print(res)
}
