//
//  main.swift
//  13752
//
//  Created by myoung on 18/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    for _ in 0 ..< (Int(input) ?? 0) {
        if let input = readLine() {
            let n = Int(input) ?? 0
            print(Array(repeating: "=", count: n).joined())
        }
    }
}
