//
//  main.swift
//  3034
//
//  Created by myoung on 20/03/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let values = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    let length = (values[1] * values[1]) + (values[2] * values[2])
    for _ in 0 ..< values[0] {
        if let input = readLine() {
            let n = Int(input) ?? 0
            print(length < (n * n) ? "NE" : "DA")
        }
    }
}
