//
//  main.swift
//  2446
//
//  Created by myoung on 25/02/2019.
//  Copyright © 2019 myoung. All rights reserved.
//

import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    for i in 0 ..< n {
        print(String(repeating: " ", count: i), terminator: "")
        print(String(repeating: "*", count: (n*2)-1-(i*2)))
    }
    for i in (0 ..< n-1).reversed() {
        print(String(repeating: " ", count: i), terminator: "")
        print(String(repeating: "*", count: (n*2)-1-(i*2)))
    }
}
