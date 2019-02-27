//
//  main.swift
//  15351
//
//  Created by myoung on 27/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for _ in 0 ..< n {
        if let input = readLine() {
            var res: UInt32 = 0
            for element in input {
                if let value = element.unicodeScalars.first?.value, value > 64 && value < 91 {
                    res += value - 64
                }
            }
            print(res == 100 ? "PERFECT LIFE" : res)
        }
    }
}
