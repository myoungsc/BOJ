//
//  main.swift
//  2965
//
//  Created by myoung on 15/04/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let value = input.split{ $0 == " " }.map{ Int($0) ?? 0 }
    var a = value[0], b = value[1], c = value[2]
    var res = 0
    while true {
        if a + 1 == b && b + 1 == c { break }
        if b - a > c - b {
            c = b
            b = a + 1
        } else {
            a = b
            b = c - 1
        }
        res += 1
    }
    print(res)
}

