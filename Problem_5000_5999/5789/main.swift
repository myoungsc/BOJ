//
//  main.swift
//  5789
//
//  Created by myoung on 07/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            let values = Array(input)
            let count = input.count
            print(values[count/2-1] == values[count/2] ? "Do-it" : "Do-it-Not")
        }
    }
}
