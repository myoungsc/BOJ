//
//  main.swift
//  17010
//
//  Created by myoung on 02/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            let values = input.split{ $0 == " " }.map{ String($0) }
            let count = Int(values[0]) ?? 0
            print(Array(repeating: values[1], count: count).joined())
        }
    }
}
