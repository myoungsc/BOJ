//
//  main.swift
//  1475
//
//  Created by myoung on 14/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    var needCount = Array(repeating: 0, count: 10)
    for element in input {
        let n = Int(String(element)) ?? 0
        needCount[n] = needCount[n] + 1
    }
    var setCount = needCount[0]
    var sixNineCount = 1
    for (i, count) in needCount.enumerated() {
        if i == 6 || i == 9 {
            sixNineCount += count
        } else {
            if setCount < count {
                setCount = count
            }
        }
    }
    print(max(sixNineCount/2, setCount))
}
