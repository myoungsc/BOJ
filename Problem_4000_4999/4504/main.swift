//
//  main.swift
//  4504
//
//  Created by myoung on 20/05/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    while let input = readLine(), input != "0" {
        let value = Int(input) ?? 0
        let isFlag = value % n == 0
        print("\(value) \(isFlag ? "is a multiple of": "is NOT a multiple of") \(n).")
    }
}
