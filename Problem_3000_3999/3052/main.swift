//
//  main.swift
//  3052
//
//  Created by myoung on 23/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

var remains: [Int] = []
while let input = readLine() {
    let n = Int(input) ?? 0
    let remain = n % 42
    if !remains.contains(remain) {
        remains.append(remain)
    }
}
print(remains.count)
