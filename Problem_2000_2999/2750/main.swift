//
//  main.swift
//  2750
//
//  Created by myoung on 20/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    var arr: [Int] = []
    for _ in 0 ..< n {
        if let value = readLine() {
            arr.append(Int(value) ?? 0)
        }
    }
    arr = arr.sorted { $0 < $1 }
    for element in arr {
        print(element)
    }
}
